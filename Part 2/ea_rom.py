import re

FILE_NAME_PATTERN = re.compile(r"(?P<file_name>[a-z_]+).py")
file_name = FILE_NAME_PATTERN.search(__file__).groupdict()['file_name']

ROM_SIZE = 32768

rom = bytearray([0xEA] * ROM_SIZE)


with open(f"{file_name}.bin", "wb") as out_file:
    out_file.write(rom)
