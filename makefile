all: main

main: main.o Package.o TwoDayPackage.o OvernightPackage.o
	g++ main.o Package.o OvernightPackage.o TwoDayPackage.o -o main

main.o: main.cpp

Package.o: Package.cpp
	g++ -c Package.cpp

OvernightPackage.o: OvernightPackage.cpp
	g++ -c OvernightPackage.cpp

TwoDayPackage.o: TwoDayPackage.cpp
	g++ -c TwoDayPackage.cpp

clean:
	rm *.o main

