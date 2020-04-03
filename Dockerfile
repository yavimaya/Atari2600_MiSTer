FROM theypsilon/quartus-lite-c5:17.1.docker0
WORKDIR /project
ADD . /project
RUN /opt/intelFPGA_lite/quartus/bin/quartus_sh --flow compile Atari2600.qpf
CMD cat /project/output_files/Atari2600.rbf
