CPC					:= clang++
INCLUDES			:= \
					-I"./Car1" \
					-I"./Car2"

CFLAGS				:= -g -c
LDFLAGS				:= -g

SRCS				:= \
					./Test.cpp \
					./Car1/Car1.cpp \
					./Car2/Car2.cpp 

all:
	$(CPC) $(CFLAGS) $(INCLUDES) $(SRCS)
	$(CPC) $(LDFLAGS) $(INCLUDES) *.o -o Test

clean:
	rm -rf *.o Test