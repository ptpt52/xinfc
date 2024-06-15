CFLAGS += -Werror -Wall

SRCS = src/xinfc-wsc.cpp

.SUFFIXES: .cpp .o

.cpp.o:
	$(CXX) -c $^ -o $@ $(CFLAGS) -Iinclude

default: xinfc-wsc

xinfc-wsc: $(SRCS:.cpp=.o)
	$(CXX) $^ -o $@ $(CFLAGS) $(LDFLAGS)

clean:
	$(RM) xinfc-wsc $(SRCS:.cpp=.o)
