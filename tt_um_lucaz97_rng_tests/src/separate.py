import re

# Path to the Verilog file
verilog_file_path = '/home/lcollini/tt06_RNG2/src/project.v'

# Function to extract modules from the Verilog file and save them into separate files
def separate_modules(file_path):
    # Read the contents of the Verilog file
    with open(file_path, 'r') as file:
        content = file.read()

    # Regular expression pattern to match Verilog module definitions
    module_pattern = re.compile(r'(module\s+[\w\d_]+\s*\(.*?\);.*?endmodule)', re.DOTALL)

    # Find all module definitions in the file
    modules = module_pattern.findall(content)

    # Dictionary to store module names and their contents
    module_files = {}

    # Process each module found
    for module in modules:
        # Extract the module name
        module_name_match = re.search(r'module\s+([\w\d_]+)', module)
        if module_name_match:
            module_name = module_name_match.group(1)
            
            # Save the module content into a separate file
            module_file_name = f'/home/lcollini/tt06_RNG2/src/{module_name}.v'
            with open(module_file_name, 'w') as mod_file:
                mod_file.write(module)

            # Store the module file name for the master file creation
            module_files[module_name] = module_file_name

    # Create a master file that includes all module files
    # master_file_path = f'/home/lcollini/tt06_RNG2/src/modules/master_project.v'
    # with open(master_file_path, 'w') as master_file:
    #     for module_name, module_file_name in module_files.items():
    #         master_file.write(f'`include "{module_file_name}"\n')
    for file  in module_files.keys():
        print('- "' + file + '.v"')

    print('.v '.join(module_files.keys()))

    return module_files.keys()

# Separate the modules and create the master file
module_names  = separate_modules(verilog_file_path)
module_names
