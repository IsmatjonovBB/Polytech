const recall = document.getElementById('recall')
const buttons = document.querySelectorAll('.btn_recall')
const sight = document.querySelectorAll('#www')
const images = document.querySelectorAll('#image')
function postRecall() {
    let writeRecall = prompt("Write your recall")
    recall.innerHTML = `<h1>Recalls</h1> <p>${writeRecall}</p>`
    recall.style.color = 'red'
}

buttons.forEach(button => {
    button.addEventListener('click', postRecall)
})

let blurOn = () => {
    images.forEach(image => {
        image.style.filter = 'blur(5px)'
    })  
}

let blurOff = () => {
    images.forEach(image => {
        image.style.filter = ''
    })  
}

// sight.addEventListener('mousemove', blurOn)
// sight.addEventListener('mouseout', blurOff)

sight.forEach(mainSight => {
    mainSight.addEventListener('mousemove', blurOn)
})
sight.forEach(mainSight => {
    mainSight.addEventListener('mouseout', blurOff)
})