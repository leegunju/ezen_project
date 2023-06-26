async function postCommentToServer(cmtData) {
    try {
        const url = '/comment/post';
        const config = {
            method: "post",
            headers: {
                'content-type': 'application/json; charset=utf-8'
            },
            body: JSON.stringify(cmtData)
        }
        const resp = await fetch(url, config);
        const result = await resp.text();
        return result;
    } catch (error) {
        console.log(error);
    }
}

document.getElementById('cmtPostBtn').addEventListener('click', () => {
    const cmtText = document.getElementById('cmtText').value;
    console.log(cmtText);
    if(cmtText == "" || cmtText == null) {
        alert("Please Write Comment");
        document.getElementById('cmtText').focus();
        return false;
    } else {
        let cmtData = {
            bno: bnoVal,
            writer: document.getElementById('cmtWriter').innerText,
            content: cmtText
        };
        console.log(cmtData);
        postCommentToServer(cmtData).then(result => {
            if(result > 0) {
                alert("Success Regist Comment");
                getCommentList(cmtData.bno);
            }
        })
    }
})

async function spreadCommentFromServer(bno) {
    console.log(bno);
    try {
        const resp = await fetch('/comment/' + bno);
        const result = await resp.json();
        return result;
    } catch (error) {
        console.log(error);
    }
}

function getCommentList(bno) {
    spreadCommentFromServer(bno).then(result => {
        console.log(result);
        const ul = document.getElementById('cmtListArea');
        if(result.length > 0) {
            ul.innerText = '';
            for(let cvo of result) {
                let li = `<li data-cno="${cvo.cno}"<div>`;
                li += `<div>${cvo.writer}</div>`;
                li += `<input type="text" id="cmtTextMod" value="${cvo.content}"></div>`;
                li += `<span>${cvo.mod_date}</span>`;
                li += `<button type="button" class="modBtn btn btn-light">%</button>`;
                li += `<button type="button" class="delBtn btn btn-light">X</button>`;
                ul.innerHTML += li;
            }
        } else {
            let li = `<li>Comment not Exist</li>`;
            ul.innerHTML += li;
        }
    });
}

document.addEventListener("click", (e) => {
    console.log(e.target);
    if(e.target.classList.contains("modBtn")) {
        console.log("clicked mod btn");
        let li = e.target.closest("li");
        let cnoVal = li.dataset.cno;
        let textContent = li.querySelector("#cmtTextMod").value;
        console.log(">>> cno > " + cnoVal);
        console.log(">>> textContent > " + textContent);

        let cmtDataMod = {
            cno: cnoVal,
            content: textContent, 
        };
        console.log(cmtDataMod);

        editCommentToServer(cmtDataMod).then(result => {
            if(result > 0) {
                alert("Success modify comment");
            }
            getCommentList(bnoVal);
        })

    } else if(e.target.classList.contains("delBtn")) {
        console.log("clicked del btn");
        let li = e.target.closest('li');
        let cnoVal = li.dataset.cno;
        console.log(cnoVal);
        removeCommentToServer(cnoVal).then(result => {
            if(result > 0) {
                alert("Success delete comment");
            }
            getCommentList(bnoVal);
        })
    }
})

async function editCommentToServer(cmtDataMod) {
    try {
        const url = '/comment/' + cmtDataMod.cno;
        const config = {
            method: 'put',
            headers: {
                'content-type': 'application/json; charset=utf-8'
            },
            body: JSON.stringify(cmtDataMod)
        }
        const resp = await fetch(url, config);
        const result = await resp.text();
        return result;
    } catch (error) {
        console.log(error);
    }
}

async function removeCommentToServer(cno) {
    try {
        const url = '/comment/' + cno;
        const config = {
            method: 'delete'
        };
        const resp = await fetch(url, config);
        const result = await resp.text();
        return result;
    } catch (error) {
        console.log(error);
    }
}