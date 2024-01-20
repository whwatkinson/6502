ROM_SIZE = 32768

rom = bytearray([0xea] * ROM_SIZE)

rom[ROM_SIZE-1] = 0xff


with open("rom_nop.bin", "wb") as out_file:
    out_file.write(rom)
