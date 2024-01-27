from re import compile
from os import path, makedirs
from project_root import project_root

PART_2_ROMS_DIR = path.join(project_root, "part_2\\roms")
FILE_NAME_PATTERN = compile(r"(?P<file_name>[a-z_A-Z0-9]+).py")
ROM_SIZE = 32768


if not path.exists(PART_2_ROMS_DIR):
    makedirs(PART_2_ROMS_DIR)


def get_rom_directory_file_path(filepath: str, rom_directory: path) -> path:

    rom_file_name = FILE_NAME_PATTERN.search(filepath).groupdict()["file_name"]

    rom_file_path = path.join(rom_directory, f"{rom_file_name}.bin")

    return rom_file_path
