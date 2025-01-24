```vhdl
ENTITY counter IS
    PORT (
        clk : IN STD_LOGIC;
        rst : IN STD_LOGIC;
        count : OUT INTEGER
    );
END ENTITY;

ARCHITECTURE behavioral OF counter IS
    TYPE count_type IS RANGE 0 TO 1023; -- Define a specific range
    SIGNAL internal_count : count_type := 0;
BEGIN
    PROCESS (clk, rst)
    BEGIN
        IF rst = '1' THEN
            internal_count <= 0;
        ELSIF rising_edge(clk) THEN
            IF internal_count = 1023 THEN
                internal_count <= 0; -- Handle Overflow
            ELSE
                internal_count <= internal_count + 1;
            END IF;
        END IF;
    END PROCESS;
    count <= internal_count;
END ARCHITECTURE;
```