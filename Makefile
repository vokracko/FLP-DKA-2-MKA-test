run: bin
	./run.sh

prepare: bin check
	mkdir -p res
	./prepare.sh

bin:
	ghc ../dka-2-mka.hs

check:
	@which fstcompile fstminimize fstequal fstdraw >/dev/null 2>&1 && echo "Required tools found" || echo "OpenFST libtools are missing, http://openfst.org"
	@which xdot >/dev/null >&1 || echo "xdot vizualizer missing (optional)"

clean:
	rm -f ./res/* ./minimal/* ./compiled/* > /dev/null 2>&1
	rm -f ../dka-2-mka{.hi,.o,}
