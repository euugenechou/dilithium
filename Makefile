.PHONY: ref avx2

ref:
	make -C ref
	mkdir -p build; mkdir -p build/test
	mv ref/PQCgenKAT_sign{2,3,5}* build/.
	mv ref/test/test_dilithium{2,3,5}* build/test/.
	mv ref/test/test_vectors{2,3,5}* build/test/.

avx2:
	make -C avx2
	mkdir -p build; mkdir -p build/test
	mv avx2/PQCgenKAT_sign{2,3,5}* build/.
	mv avx2/test/test_dilithium{2,3,5}* build/test/.
	mv avx2/test/test_vectors{2,3,5}* build/test/.

clean:
	rm -rf build
