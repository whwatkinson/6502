import re

FILE_NAME_PATTERN = re.compile(r"(?P<file_name>[a-z_A-Z0-9]+).py")
ROM_SIZE = 32768


def get_rom_file_name_from_path(filepath: str) -> str:

    file_name = FILE_NAME_PATTERN.search(filepath).groupdict()['file_name']

    return file_name
