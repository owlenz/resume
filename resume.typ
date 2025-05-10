#import "./template.typ": *

#show: resume.with(
    author: "Saif Al-Din Samy",
	position:"Software Developer " ,
    location: "6th of October, Giza",
    contacts: (
        [#link("mailto:seifowlen@proton.me")[email]],
        [#link("https://saifowlen.github.io/Portfolio/")[website]],
        [#link("https://github.com/saifowlen")[github]],
        [#link("https://linkedin.com/in/saifowlen")[linkedin]],
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
        [C],
        [Bash],
        [Nix],
		[JavaScript/TypeScript],
		[Rust],
		[Go],
    )),
    ("Frameworks and Libraries", (
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



= Projects

#projects(
    name: "CTTP",
    tech: "C",
    url: "https://github.com/owlenz/cttp",
    summary: [
        - Developed a lightweight HTTP server in C, utilizing Unix sockets for efficient connections and POSIX threads for enhanced load handling and concurrency.
        - It handles basic http requests (GET, POST, PUT, etc.)
        - It uses a .ini config file for the ip address, port and other configurations.
    ]
)

#projects(
    name: "Rordle",
    tech: "React, Tailwindcss",
    url: "https://rordle2.vercel.app",
    summary: [
        - A Wordle-like game for Risk of Rain 2 where you guess an item daily, losing HP with each wrong guess, and receiving hints until you either guess correctly or reach 0 HP.
        - The game is heavily inspired from isaacle (the tboi version of wordle).
        - github: #link("https://github.com/owlenz/rordle")
    ],
)
#projects(
    name: "What To Game",
    tech: "React, Tailwindcss, shadcn/ui",
    url: "https://what-to-game.vercel.app/",
    summary: [
        - A dynamic website designed to help users discover and choose games efficiently. Leveraging TypeScript for type safety and React for a responsive user interface, this project is a testament to my proficiency in modern web development.
        - Users can easily search for games, sort and filter results based on the platform of their choice.
        - Each game listing provides detailed information, including a comprehensive game description, platform compatibility, user ratings, and games from the same series search
        - github: #link("https://github.com/owlenz/WhatToGame")
    ],
)

= Experience
#exp(
    role: "Freelance Web Developer",
    date: "Feb 2024 - April 2025",
    summary: [
        - A website for a dentistry SaaS system.
        - Developed a data management website, including both front-end and back-end, featuring a dashboard to display real-time statistics and insights for improved decision-making.
    ]
)

= Certifications
#cert(
    name: "Full Stack Open's Full-Stack Course",
    url: "https://studies.cs.helsinki.fi/stats/api/certificate/fullstackopen/en/b0bc40292a54ddff5607e1fbac05a6c6",
    source: "University of Helsinki",
    summary: [
        - Completed an intensive Fullstack Development program, demonstrating proficiency in both frontend and backend technologies.
        - Acquired hands-on experience with modern frameworks such as React and Express.js, showcasing the ability to design, develop, and deploy dynamic web applications.
    ],
)
#cert(
    name: "Full Stack Open's Relational Database",
    source: "University of Helsinki",
    url: "https://studies.cs.helsinki.fi/stats/api/certificate/fs-psql/en/a840b11a586dcf256ceb6f9e4ac2c338",
)
