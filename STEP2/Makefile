vcs		:
		vcs 	\
		-f filelist.f 	\
		-LDFLAGS -Wl,--no-as-needed          \
		-fsdb -full64 -R +vc +v2k -sverilog -debug_all \
		-ntb_opts uvm-1.1	\
		-timescale=1ns/1ps
verdi 	:
		verdi -sv -f filelist.f -ssf *.fsdb &
clean	:
		rm -rf *.log simv *.daidir csrc *.key DVEfiles *.vpd *.conf *.rc *.fsdb verdiLog