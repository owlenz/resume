#import "./temp.typ": *

#show: resume.with(
  author: "Saif Al-Din Samy",
	position:"Software Developer " ,
  location: "6th of October, Giza",
  contacts: (
    [#link("mailto:seifowlen@proton.me")[Email]],
    [#link("https://saifowlen.github.io/Portfolio/")[Website]],
    [#link("https://github.com/saifowlen")[GitHub]],
    [#link("https://linkedin.com/in/saifowlen")[LinkedIn]],
  ),
)

= Education
#edu(
  institution: "Cairo University",
  date: "2026",
  location: "Giza, Egypt",
	gpa: "3.4",
  degrees: (
    (
			"Bachelor's of Computer and Artificial Intelligence",
			"Computer Science"
		),
  ),
)

= Skills
#skills((
  ("Languages", (
    [C++],
		[Rust],
		[Go],
		[JavaScript],
		[TypeScript],
  )),
  ("Frameworks and Libraries", (
		[Node.js],
    [React.js],
		[Express.js],
  )),
  ("Tools", (
    [Git],
    [Linux/Unix],
  )),
	("Hobbies", (
		[Coding],
		[Reading],
		[Gaming],
		[Cooking]
	))
))


