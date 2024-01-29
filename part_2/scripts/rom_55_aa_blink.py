from common import get_rom_directory_file_path, ROM_SIZE, PART_2_ROMS_DIR
from op_codes_6502 import NOP, LDA, STA, JMP


def make_rom() -> None:

    # fmt: off
    code = bytearray([
        LDA, 0xff,           # lda #$ff
        STA, 0x02, 0x60,     # sta $6002

        LDA, 0x55,           # lda #$55
        STA, 0x00, 0x60,     # sta $6000

        LDA, 0xaa,           # lda #$aa
        STA, 0x00, 0x60,     # sta $6000

        JMP, 0x05, 0x80,     # jmp $8005
    ])
    # fmt: on

    rom = code + bytearray([NOP] * (ROM_SIZE - len(code)))
    rom_file_path = get_rom_directory_file_path(__file__, PART_2_ROMS_DIR)

    # Program starting address
    rom[0x7FFC] = 0x00
    rom[0x7FFD] = 0x80

    with open(rom_file_path, "wb") as out_file:
        out_file.write(rom)

    return None


if __name__ == "__main__":
    make_rom()
