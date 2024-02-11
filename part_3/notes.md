https://www.youtube.com/watch?v=oO8_2JJV0B4&ab_channel=BenEater
http://sun.hasenbraten.de/vasm/


1. Download and install vasm
    ``` 
    wget http://sun.hasenbraten.de/vasm/release/vasm.tar.gz
    tar xvf vasm.tar.gz
    rm vasm.tar.gz
    make CPU=6502 SYNTAX=oldstyle
    ```

2. Write in assembly the work completed in part_2/scripts/rom_55_aa_blink.py
   - See part_3/blink/blink.s

3. Write ror
   - See part_3/ror/ror.s


n.b to assemble
```
vasm -Fbin -dotdir $FILENAME
```