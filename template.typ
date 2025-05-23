#let resume(
  author: "",
	position: "",
  location: "",
  contacts: (),
  body
) = {

  // Sets document metadata
  set document(author: author, title: author)

  // Document-wide formatting, including font and margins
  set text(
    size: 11pt,
    lang: "en"
  )

  set page(
    margin: (
      top: 1cm,
      bottom: 0cm,
      left: 1cm,
      right: 1cm
    ),
  )

  show link: set text(
    fill: rgb("#0645AD")
  )
  
  // Header parameters, including author and contact information.
  show heading: it => [
    #pad(top: -5pt, bottom: -15pt, [#smallcaps(it.body)])
    #line(length: 100%, stroke: 1pt)
  ]

  // Author
  align(center)[
    #block(text(weight: 700, 2.5em, [#smallcaps(author)]))
  ]

	pad(
		top: -0.3em,
		bottom: -0.3em,
		align(center)[
			#smallcaps(position)
		]
	)

  // Contact
  pad(
    align(center)[
      #smallcaps[#contacts.join("  |  ")]
    ],
  )

  // Location
  if location != "" {
    align(center)[
      #smallcaps[#location]
    ]
  }

  // Main body.
  set par(justify: true)

  body
}

/*
Allows hiding or showing full resume dynamically using global variable. This can
be helpful for creating a single document that can be rendered differently depending on
the desired output, for cases where you'd like to simultaneously render both a full copy
and a single-page instance of only the most important or vital information.
*/
#let hide(should-hide, content) = {
  if not should-hide {
    content
  }
}

/*
Education section formatting, allowing enumeration of degrees and GPA
*/
#let edu(
  institution: "",
  date: "",
  degrees: (),
  gpa: "",
  location: ""
) = {
  pad(
    grid(
      columns: (auto, 1fr),
      align(left)[
        #strong[#institution]
        #{
          if gpa != "" [
            | #emph[GPA: #gpa]
          ]
        }
        \ #{
          for degree in degrees [
            #strong[#degree.at(0)] | #emph[#degree.at(1)] \
          ]
        }
      ],
      align(right)[
        #emph[#date]
        #{
          if location != "" [
            \ #emph[#location]
          ]
        }
      ]
    )
  )
}

/*
Skills section formatting, responsible for collapsing individual entries into
a single list.
*/
#let skills(areas) = {
  for area in areas {
    strong[#area.at(0): ]
    area.at(1).join(" | ")
    linebreak()
  }
}


#let projects(
    name: "",
    tech: "",
    date: "",
    url: "",
    summary: "",
    details: []
) = {
    pad(
        bottom: 5%,
        grid(
            columns: (auto, 1fr),
            align(left)[
                #strong[#name] | #emph[#tech]
                \
                #link(url)
                #{
                    if summary != "" [
                        \ #emph[#summary]
                    ]
                }
            ],
            align(right)[
                #emph[#date]
            ]
        )
    )
    details
}

/*
Experience section formatting logic.
*/
#let exp(
    role: "",
    project: "",
    date: "",
    location: "",
    summary: "",
    details: []
) = {
    pad(
        grid(
            columns: (10fr, 2fr),
            align(left)[
                #strong[#role]
                #{
                    if summary != "" [
                        \ #emph[#summary]
                    ]
                }
            ],
            align(right)[
                #emph[#date]
            ]
        )
    )
    details
}


#let cert(
    name: "",
    date: "",
    url: "",
    source: "",
    summary: "",
) = {
    pad(
        bottom: 5%,
        grid(
            columns: (auto, 1fr),
            align(left)[
                #strong[#name] | #strong[#source]
                \
                #link(url)[Certificate]
                #{
                    if summary != "" [
                        \ #emph[#summary]
                    ]
                }
            ],
            align(right)[
                #emph[#date]
            ]
        )
    )
}
