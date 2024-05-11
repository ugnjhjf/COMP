import { getBlogPosts } from "./data";
import "./style.css";
import HeroImage from "./assets/images/hero.jpg"
import "./test/date/printDate"

const blogs = getBlogPosts();
const ul = document.createElement("ul");
blogs.forEach(blog => { //遍历每个blog元素，创建一个li元素，
    const li = document.createElement("li");  //li元素的内容为blog元素的内容
    li.innerText = blog; //将li元素的内容设置为blog元素的内容
    ul.appendChild(li);
})
document.body.appendChild(ul); //把元素放到body当中

const image = document.createElement("img"); //添加到主页（末尾）
image.src = HeroImage;
document.body.prepend(image); //添加到开头

const h1 = document.createElement("h1"); //添加到主页（开头）
h1.innerText = "博客列表";
document.body.prepend(h1);