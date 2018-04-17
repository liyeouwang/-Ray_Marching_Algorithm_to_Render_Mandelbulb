CXX = mpicxx
LDFLAGS = -lm -fopenmp -llodepng
CXXFLAGS = -std=c++11 -I/home/ipc/ta/lib/glm -I/home/ipc/ta/lib/lodepng -L/home/ipc/ta/lib/lodepng
#TARGETS = seq md_pal 
TARGETS = md_pal md_bonus

.PHONY: all
all: $(TARGETS)

%: %.cc
	$(CXX) $(CXXFLAGS) $< -o $@ $(LDFLAGS)

.PHONY: clean
clean:
	rm -f $(TARGETS) $(TARGETS:=.o)
