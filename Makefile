all:
	$(CXX) -I . -std=c++11 -Wall -Wextra -pedantic main.cc -o test
	./test
cpp14:
	$(CXX) -I . -std=c++14 -Wall -Wextra -pedantic main.cc -o test
clean:
	rm -rf test

