var reg1 = /\.jpg$|\.jpeg$|\.png$|\.gif$|\.bmp$/;
var reg2 = /\.(?:jpe?g|png|gif|bmp)$/;
var reg3 = /\.(?:jpg|jpeg|png|gif|bmp)$/;

var lst = [
  'bashrc',
  'stylesheet.css',
  'beard',
  'blueprint.tar.gz',
  'TupleTag.html',
  'TupleTag.java',
  'lighting_vs_tree.jpg',
  'work_zone_1.jpg',
  'work_zone_2.jpg',
  'work_zone_3.jpg',
  'css_effects.js',
  'git_presentation.pdf',
  'visual_studio_general.pdf',
  'visual_studio_legend.pdf',
  'visual_studio_viewers.pdf',
  'question_marks.png',
  'raids_appsocket.png',
  'raids_chunk.png',
  'raids_download.png',
  'raids_eve.png',
  'raids_recover.png',
  'raids_upload.png',
  'wall.png',
  'wordpress_design_dynamic_pages.png',
  'wordpress_design_error_icon.png',
  'wordpress_design_index.png',
  'wordpress_design_single.png',
  'git_wrapper_facade.rb',
  'specific_shortener.rb',
  'booter.sh',
  'git_setup_demo.sh',
  'css_js_html_dont_know.txt',
  'independent_study.txt'
];

console.log(lst[7].match(reg1))
console.log(lst[7].match(reg2))

(function() {
	console.time('reg1');
	for (var i=0; i<1e4; i++) {
		for(var j=0, len=lst.length; j<len; j++) {
			lst[j].match(reg1);
		}
	}
	console.timeEnd('reg1');
})();

(function() {
	console.time('reg2');
	for (var i=0; i<1e4; i++) {
		for(var j=0, len=lst.length; j<len; j++) {
			lst[j].match(reg2);
		}
	}
	console.timeEnd('reg2');
})();

(function() {
	console.time('reg3');
	for (var i=0; i<1e4; i++) {
		for(var j=0, len=lst.length; j<len; j++) {
			lst[j].match(reg3);
		}
	}
	console.timeEnd('reg3');
})();
