var TOTAL = 1e4;

(function() {
	console.time('tst1');
	for (var i=0; i<TOTAL; ++i) {
	    // test 1
	}
	console.timeEnd('tst1');
})();

(function() {
	console.time('tst2');
	for (var i=0; i<TOTAL; ++i) {
	    // test 2
	}
	console.timeEnd('tst2');
})();
