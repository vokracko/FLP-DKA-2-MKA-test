run: bin
	./run.sh

prepare: bin check
	mkdir -p res
	mkdir -p minimal
	mkdir -p original
	./prepare.sh

bin:
	ghc ../dka-2-mka.hs

check:
	@which fstcompile fstminimize fstequal fstdraw >/dev/null 2>&1 && echo "Required tools found" || echo "OpenFST libtools are missing, http://openfst.org"
	@which xdot >/dev/null >&1 || echo "xdot vizualizer missing (optional)"

clean:
	rm -f ./res/* ./minimal/* ./original/* > /dev/null 2>&1
	rm -f ../dka-2-mka{.hi,.o,}
