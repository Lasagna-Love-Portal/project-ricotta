//contributor data
const contributors = [
  {
    cname: "Connie Ray",
    contrib_url: "https://github.com/",
  },
  {
    cname: "Rasha Simmons",
    contrib_url: "https://github.com/",
  },
  {
    cname: "Sally",
    contrib_url: "https://github.com/",
  },
  {
    cname: "Vale Gilbert",
    contrib_url: "https://github.com/urbanengr",
  },
  {
    cname: "Audrey",
    contrib_url: "https://github.com/",
  },
];

//selecting html elements
const containerBox = document.querySelector(".cbox");

// function for loading name arrays
function addContributors() {
  contributors.forEach(function (item) {
    containerBox.innerHTML = "";

    const html = `
            <div class="cbox">
                <div class="cname"><a style = "text-decoration:none" href="${item.contrib_url}">${item.cname}</a>
                </div>
            </div>
        `;
    containerBox.insertAdjacentHTML("beforebegin", html);
  });
}

addContributors(contributors);
