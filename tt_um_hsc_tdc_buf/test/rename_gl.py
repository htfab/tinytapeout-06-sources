import glob
import os
import shutil
import argparse

def rn_for_iverilog_sdf(
    sdf_root_dir,
    gln_root_dir,  
    sdf_rn_root_dir,
    gln_rn_dir
    ):

    # Clear existing SDF dir
    if os.path.exists(sdf_rn_root_dir):
        shutil.rmtree(sdf_rn_root_dir)
    os.mkdir(sdf_rn_root_dir)
    os.mkdir(sdf_rn_root_dir + "/multicorner")
    corners = ["min", "nom", "max"]
    for corner in corners:
        os.mkdir(f"{sdf_rn_root_dir}/multicorner/{corner}")

    # Clear gln dir
    if os.path.exists(gln_rn_dir):
        shutil.rmtree(gln_rn_dir)
    os.mkdir(gln_rn_dir)

    # Get all GL netlists
    gl_netlists = glob.glob(f"{gln_root_dir}/*.v")
    # Get all SDF Files
    sdfs = glob.glob(f"{sdf_root_dir}/**/*.sdf", recursive=True)

    # Rename GLN instances and nets to support sdf annotation w/ iverilog
    for gln in gl_netlists:
        with open(gln, "r") as f:
            gln_lines = f.readlines()
            out_lines = []
            correct_lst = []
            for line in gln_lines:
                if("input " in line or "output " in line or "wire [" in line):
                    line_start = line
                    # keepers for multi-bit nets to multi-bit nets
                    if("[") in line:
                        line_range = line.split("[")[1]
                        line_range = line_range.split("]")[0]
                        idx_start  = int(line_range.split(":")[1].strip(" "))
                        idx_end    = int(line_range.split(":")[0].strip(" "))
                        wire_name  = line.split("]")[1].strip(";\n").strip(" ")
                        # Build structure to correct overwrites for inputs and outputs
                        correct_lst.append({"name": wire_name, "idx_start":idx_start, "idx_end":idx_end})
                        line_start = line
                            
                else:
                    line_start = line.replace("[", "_").replace("]", "")
                
                out_line = line_start
                if("\\" in out_line):
                    while("\\" in out_line):
                        # port connection
                        if("(\\" in out_line):
                            rn_line = out_line.split("(\\")
                            rn_line_pre = rn_line[0]+"("
                            rn_line = rn_line[1].split(")")
                            rn_line_rn = rn_line[0].replace(".", "_")
                            if(";\n" == rn_line[-1]):
                                rn_line_end = ")" + "".join(rn_line[1:-2]) + ");\n"
                            else: 
                                rn_line_end = ")" + "".join(rn_line[1:])
                        # wire
                        elif("wire \\" in line):
                            rn_line = out_line.split("wire \\")
                            rn_line_pre = rn_line[0]+"wire "
                            rn_line = rn_line[1]
                            rn_line_rn = ""
                            rn_line_end = rn_line.replace(".", "_")
                        # instance
                        else:
                            rn_line = out_line.split("\\")
                            rn_line_pre = rn_line[0]
                            rn_line = rn_line[1].split("(")
                            rn_line_rn = rn_line[0].replace(".", "_")
                            rn_line_end = "(" + "(".join(rn_line[1:])
                            
                        out_line = rn_line_pre + rn_line_rn + rn_line_end
                    out_lines.append(rn_line_pre + rn_line_rn + rn_line_end)
                            
                else:
                    out_lines.append(line_start)

            gln_renamed = "".join(out_lines)
                            
        # Fix I/O
        for io in correct_lst:
            for idx in range (io["idx_start"], io["idx_end"] + 1):
                gln_renamed = gln_renamed.replace("("+io["name"]+"_"+str(idx), "(" + io["name"]+"["+str(idx)+"]")
                gln_renamed = gln_renamed.replace(" "+io["name"]+"_"+str(idx), " " + io["name"]+"["+str(idx)+"]")
        
        out_fh = f"{gln_rn_dir}/{os.path.basename(gln)}"
        with open(out_fh, "w") as f:
            f.write(gln_renamed)

    # Rename SDF - easy just replace \. with _
    for sdf in sdfs:
        with open(sdf, "r") as f:
            output_sdf = f.read().replace("\.", "_").replace("\[","_").replace("\]", "")
        # Figure out where to store output SDF
        parent = os.path.basename(os.path.dirname(sdf))
        if(parent != "sdf"):
            "here"
            out_fh = f"{sdf_rn_root_dir}/multicorner/{parent}/{os.path.basename(sdf)}"
        else:
            out_fh =  f"{sdf_rn_root_dir}/{os.path.basename(sdf)}"

        with open(out_fh, "w") as f:
            f.write(output_sdf)


if __name__=="__main__": 
    
    parser = argparse.ArgumentParser(description='Rename SDF/GLN to work with iverilog SDF annotation.')
    parser.add_argument(
        '-sdf_src', 
        "--sdf_source_dir", 
        type=str,
        help='Path to directory containing single and/or multi-corer SDF files.'
    )
    
    parser.add_argument(
        '-gln_src', 
        "--gln_source_dir", 
        type=str,
        help='Path to directory containing verilog gate-level-netlists.'
    )

    parser.add_argument(
        '-sdf_dst', 
        "--sdf_destination_dir", 
        type=str,
        help='Path to destination directory which will contain the renamed SDF files.'
    )

    parser.add_argument(
        '-gln_dst', 
        "--gln_destination_dir", 
        type=str,
        help='Path to destination directory which will contain the renamed verilog gate-level-netlists.'
    )

    args = vars(parser.parse_args())

    rn_for_iverilog_sdf(
        args["sdf_source_dir"],
        args["gln_source_dir"],  
        args["sdf_destination_dir"],
        args["gln_destination_dir"]
    )