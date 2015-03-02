# -------------------------------------------------
# -------     Universidad de los Andes      -------
# -------      Departamento de Física       -------
# -------    Proyecto Joven Investigador    -------
# -------  Andrés Felipe García Albarracín  -------
# -------    Juan Carlos Sanabria Arenas    -------
# -------          February - 2015          -------
# -------------------------------------------------
# This makefile serves to compile c++ programs using HepMC and Root libraries
#
# Usage of the program
# Write one of the next possibilities:
# make compile                    To compile without Root nor HepMC
# make compile_ROOT               To compile with Root and without HepMC
# make compile_HepMC              To compile without Root and with HepMC
# make compile_ROOT_HepMC         To compile with Root and HepMC

# Modify the following variables according to your c++ compiler and your 
# local Root and HepMC installation folders. If you do not use any of these
# programs, leave blank.

# C++ Compiler
CXX=g++

# Name of the main file and the target file
MAINFILE=HelloWorld.cc
TARGETFILE=HelloWorld
SOURCEFILES=HepMCFunctions.h ROOTFunctions.h # Other files

# Directory where HepMC is installed
HEPMCDIR=/home/afgarcia1214/Documentos/Programas_ubuntu/HepMC-2.06.09
HEPMCLIB=$(HEPMCDIR)/lib
HEPMCINC=$(HEPMCDIR)/include/HepMC

# Root flags and libs
#ROOTFLAGLIB=root-config --cflags --glibs
ROOTPHYLIB=/usr/lib/x86_64-linux-gnu/ # Directory where is located libPhysics.so

# Directory of Exrootanalysis
EXROOTLIB=/home/afgarcia1214/Documentos/Programas_ubuntu/MG5_aMC_v2_2_2/ExRootAnalysis/
EXROOTINC=/home/afgarcia1214/Documentos/Programas_ubuntu/MG5_aMC_v2_2_2/ExRootAnalysis/ExRootAnalysis

all: 
	@echo "\nUsage: write one of the next possibilities:"
	@echo "	make compile    		To compile without Root nor HepMC"
	@echo "	make compile_ROOT		To compile with Root and without HepMC"
	@echo "	make compile_HepMC    		To compile without Root and with HepMC"
	@echo "	make compile_ROOT_HepMC    	To compile with Root and HepMC"
	@echo "To edit make parameters type vi Makefile \n"

# To compile without Root nor HepMC
compile: $(MAINFILE) $(OTHERFILES)
	$(CXX) -o $(TARGETFILE) $(MAINFILE)

# To compile with Root and without HepMC
compile_ROOT: $(MAINFILE) $(OTHERFILES)
	$(CXX) -o $(TARGETFILE) $(MAINFILE) `root-config --cflags --glibs` \
          -I$(EXROOTINC) \
          -L$(EXROOTLIB) -lExRootAnalysis -L$(ROOTPHYLIB) -lPhysics

# To compile without Root and with HepMC
compile_HepMC: $(MAINFILE) $(OTHERFILES)
	$(CXX) -o $(TARGETFILE) $(MAINFILE) \
	 -I$(HEPMCINC) \
	 -L$(HEPMCLIB) -lHepMC

# To compile with Root and HepMC
compile_ROOT_HepMC: $(MAINFILE) $(OTHERFILES)
	$(CXX) -o $(TARGETFILE) $(MAINFILE) `root-config --cflags --glibs` \
         -I$(HEPMCINC) -I$(EXROOTINC) \
         -L$(HEPMCLIB) -lHepMC -L$(EXROOTLIB) -lExRootAnalysis -L$(ROOTPHYLIB) -lPhysics
