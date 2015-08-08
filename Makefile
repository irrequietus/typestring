all:
	$(CXX) -I . -std=c++11 main.cc -o test
	./test
clean:
	rm -rf test

