# Project Ricotta

Project Ricotta is a volunteer effort to build a new web and mobile platform for [Lasagna Love](https://www.lasagnalove.org) volunteers. Project Ricotta is designed to scale kindness by building the digital tools to support Lasagna Love chefs, recipients, and donors in contributing to sharing lasagnas between neighbors.

Project Ricotta is constructing and managing the portal, site, data stack, and infrastructure to improve the Lasagna Love volunteer and requester experience.
In addition, it offers a chance for individuals who are either new to open source software development, looking to enhance their software development abilities, or simply interested in participating in a meaningful project, to collaborate with a welcoming, open-minded, and cooperative team.

You can join Project Ricotta as a developer, product manager, or ops engineer. We’ve got three classes of contributors: contributors, maintainers, and mentors.

Mentors manage office hours, support our hackathons, and provide guidance to the project and its members. Maintainers lead the development of a specific component of the Project Ricotta experience, and make the final call on architecture and performance. Contributors are the backbone of Project Ricotta, and pick up and work on the tickets required to build and operate Project Ricotta.

Need more help? Join our open office hours, which are currently Friday evenings, starting March 24th, from 4-8 ET.

## Contributing

We welcome (and appreciate) contributions from the community! Your work here results in a tangible, measurable, wholeheartedly good impact on the world: everything we do here makes it easier to connect people, neighbor by neighbor, lasagna by lasagna!

As a fully volunteer team, we’re working with a set of people with unlimited goodwill (but limited time). Reading the Contribution Guide and following these guidelines helps to communicate that you respect the time of the people managing and developing this open source project.
In return, they should reciprocate that respect in addressing your issue, assessing changes, and helping you finalize your pull requests. Give this guide a quick read to ensure your contribution goes as smoothly as possible.

Project Ricotta is an open source project at a very early stage. We’re building our community and have space for people to write tickets, tutorials, blog posts, documentation, figuring out how to manage incoming code contributions, mentoring new contributors, writing code, building developer tools, setting up our SRE practices and guidelines (and getting ready to train people to be our SREs).

This document is fairly extensive, and we’ll be making it easier to read as we go along.

***The most important rule is that contributing must be cooperative and that the community is friendly and not nitpicking on details, such as coding style.**
**As with all software development, people and teams make the best decisions they can at the time that they make them. If you see something that could be done better, file a ticket - we have the opportunity to improve because we built something, not in spite of the way it was built.**

### Community Code of Conduct

The goal is to maintain a diverse community that's pleasant for everyone. That's why we would greatly appreciate it if everyone contributing to and interacting with the community also followed this Code of Conduct.
The Code of Conduct covers our behavior as members of the community, in any forum: mailing list, wiki, site, Slack, Jira, public meeting or private correspondence. The Code of Conduct is heavily based on the Ubuntu Code of Conduct, and the Pylons Code of Conduct, and borrows heavily and directly from the Celery Code of Conduct.

#### Be considerate

Your work will be used by other people, and you in turn will depend on the work of others. Any decision you take will affect users and colleagues, and we expect you to take those consequences into account when making decisions.
Even if it's not obvious at the time, our contributions to Project Ricotta will impact the work of others. For example, changes to code, infrastructure, policy, documentation and translations during a release may negatively impact others' work, breaking the most important principle on the project: contributing must be collaborative.

#### Be respectful

The Project Ricotta community and its members treat one another with respect. Everyone can make a valuable contribution to Project Ricotta. We may not always agree, but disagreement is no excuse for poor behavior and poor manners. We might all experience some frustration now and then, but we cannot allow that frustration to turn into a personal attack.
It's important to remember that a community where people feel uncomfortable or threatened isn't a productive one. We expect members of the Project Ricotta community to be respectful when dealing with other contributors as well as with people outside the Project Ricotta project and with users of Project Ricotta.

#### Be collaborative

Collaboration is central to Project Ricotta and to the larger free software community. We should always be open to collaboration.
Your work should be done transparently and patches from Project Ricotta should be given back to the community when they're made, not just when the distribution releases. If you wish to work on new code for existing upstream projects, at least keep those projects informed of your ideas and progress.
It many not be possible to get consensus from upstream, or even from your colleagues about the correct implementation for an idea, so don't feel obliged to have that agreement before you begin, but at least keep the outside world informed of your work, and publish your work in a way that allows outsiders to test, discuss, and contribute to your efforts.

#### When you disagree, consult others

Disagreements, both political and technical, happen all the time and the Project Ricotta community is no exception. It's important that we resolve disagreements and differing views constructively and with the help of the community and community process.
If you really want to go a different way, then we encourage you to make a derivative distribution or alternate set of packages that still build on the work we've done to utilize as common of a core as possible.

#### When you're unsure, ask for help

Nobody knows everything, and nobody is expected to be perfect. Asking questions avoids many problems down the road, and so questions are encouraged. Those who are asked questions should be responsive and helpful.
However, when asking a question, care must be taken to do so in an appropriate forum. If you are nervous to ask a question, come to open office hours. Too nervous for that? Slack #working-project-ricotta during office hours and someone will hop in and help you out.

#### Step down considerately

Developers on every project come and go and Project Ricotta is no different. When you leave or disengage from the project, in whole or in part, we ask that you do so in a way that minimizes disruption to the project. This means you should tell people you're leaving and take the proper steps to ensure that others can pick up where you left off.

### Making Contributions

If you are a contributor from outside our project, please fork the repository and send us a PR from your fork.

Members of the project should create named branches, ideally namespaced to your user. For example, a GitHub user named Jo Doe would run `git checkout -b jodoe/my-contribution` to organize their contribution branches.

The Dockerized environment can be used for development. Once you have [Docker installed](https://www.docker.com/products/docker-desktop/), run `docker-compose build` and `docker-compose up` from the top-level directory of the repository.

Once you're ready, open a [pull request](https://github.com/Lasagna-Love-Portal/project-ricotta/pulls) with a clear description of your changes (you can read more about pull requests on GitHub [here](http://help.github.com/pull-requests/)).

When you send a pull request, please be sure to include:

- Unit tests that validate that your changes work as expected.
- Use concise code comments (it can help to imagine that you are explaining your code to a total stranger).
- Examples, if necessary.

## Project Background

Project Ricotta is a volunteer effort. We do our best to try and review contributions in a timely manner. Any code or feedback you share with us is hugely appreciated.
