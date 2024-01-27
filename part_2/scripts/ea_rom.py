from common import get_rom_directory_file_path, ROM_SIZE, PART_2_ROMS_DIR

from op_codes_6502 import NOP
from os import path


def make_rom() -> None:

    rom = bytearray([NOP] * ROM_SIZE)
    rom_file_path = get_rom_directory_file_path(__file__, PART_2_ROMS_DIR)

    with open(rom_file_path, "wb") as out_file:
        out_file.write(rom)

    return None


if __name__ == "__main__":
    make_rom()
