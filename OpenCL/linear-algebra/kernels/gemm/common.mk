OpenCL_SDK=/etc/OpenCL/
INCLUDE=-I${OpenCL_SDK}/OpenCL/common/inc -I${PATH_TO_UTILS}
LIBPATH=-L${OpenCL_SDK}/OpenCL/common/lib -L${OpenCL_SDK}/shared/lib
LIB=-lOpenCL -lm
all:
	gcc -O3 ${INCLUDE} ${LIBPATH} ${LIB} ${CFILES} -o ${EXECUTABLE}

clean:
	rm -f *~ *.exe *.txt
