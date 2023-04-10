//contributor data
const contributors = [
  // {
  //   cname: "",
  //   contrib_url: "",
  // },
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
