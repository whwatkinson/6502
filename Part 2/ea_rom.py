from common import get_rom_file_name_from_path, ROM_SIZE


def make_rom() -> None:

    rom = bytearray([0xEA] * ROM_SIZE)
    rom_file_name = get_rom_file_name_from_path(__file__)

    with open(f"{rom_file_name}.bin", "wb") as out_file:
        out_file.write(rom)

    return None


if __name__ == '__main__':
    make_rom()
