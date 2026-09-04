<project xmlns="com.autoesl.autopilot.project" top="accel_top" name="cnn_accelerator">
    <includePaths/>
    <libraryPaths/>
    <Simulation>
        <SimFlow name="csim" csimMode="0" lastCsimMode="0"/>
    </Simulation>
    <files xmlns="">
        <file name="../../testbench/test_data.h" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="../../testbench/tb_accel.cpp" sc="0" tb="1" cflags=" -Wno-unknown-pragmas" csimflags=" -Wno-unknown-pragmas" blackbox="false"/>
        <file name="src/relu.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/maxpool.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/conv_engine.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/accel_top.h" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
        <file name="src/accel_top.cpp" sc="0" tb="false" cflags="" csimflags="" blackbox="false"/>
    </files>
    <solutions xmlns="">
        <solution name="solution1" status="active"/>
    </solutions>
</project>

