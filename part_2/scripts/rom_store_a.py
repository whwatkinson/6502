from common import get_rom_directory_file_path, ROM_SIZE, PART_2_ROMS_DIR
from op_codes_6502 import NOP, LDA, STA


def make_rom() -> None:

    rom = bytearray([NOP] * ROM_SIZE)
    rom_file_path = get_rom_directory_file_path(__file__, PART_2_ROMS_DIR)

    # Load 0x42 into the A register
    rom[0] = LDA
    rom[1] = 0x42

    # Store contents of A resister at address 0x6000
    rom[2] = STA
    rom[3] = 0x00
    rom[4] = 0x60

    # Program starting address
    rom[0x7FFC] = 0x00
    rom[0x7FFD] = 0x80

    with open(rom_file_path, "wb") as out_file:
        out_file.write(rom)

    return None


if __name__ == "__main__":
    make_rom()
