# aboutBlog
## html语法
1. <b>插入链接</b>
    * 直接打开：<a href="targetAddress">showContents</a>
    * 新窗口打开：<a href="targetAddress" target="_blank">showContents</a>

## hexo常用命令
1. <b>hexo clean</b>：清除缓存文件db.json和已生成的静态文件public
    * 换主题后内容显示异常可试。
2. <b>hexo new page `pagename`</b>：新建题为pagename的页面。
    * 默认链接地址为 blogAddress/pagename/
    * 标题可在对应文件中修改
    * 不出现在首页文章列表和归档中，不支持设置分类和标签
3. <b>hexo new (post) "article"</b>：新建题为article的文章。
    * 标题有空格时必须加引号
    * 标题可在对应md文件中改
4. <b>hexo g</b>：生成网站静态文件到默认设置的public文件夹。
    * 便于查看网站生成的静态文件或手动部署网站。
    * 自动部署不需要先执行该命令。
    * g为generate缩写，命令效果一致。
5. <b>hexo d</b>：自动生成网站静态文件，并部署到设定的仓库。
    * d为deploy缩写，命令效果一致。
    * 部署失败尝试：npm install hexo-deployer-git --save
6. <b>hexo s</b>：启动本地服务器，用于预览主题。
    * 默认地址：http://localhost:4000/，端口占用时hexo s -p 5000进入http://localhost:5000/
    * 预览时可修改内容，保存后刷新即可。
    * 对根目录_config.yml的修改需要重启本地服务器后预览效果。
    * s为server缩写，命令效果一致。

## Font Awesome
1. 配置
    * 下载Font Awesome
    * 将`web-fonts-with-css`中`.css`文件放入`主题\source\css`
    * 将`webfonts`文件夹放入`主题\source`
    * 在`主题\layout\_partial\head.ejs`中添加
        `<link rel="stylesheet" href="<%- url_for('/fa-brands/css/fa-brands.min.css') %>">`  
        `<link rel="stylesheet" href="<%- url_for('/fa-regular/css/fa-regular.min.css') %>">`  
        `<link rel="stylesheet" href="<%- url_for('/fa-solid/css/fa-solid.min.css') %>">`  
        `<link rel="stylesheet" href="<%- url_for('/fontawesome/css/fontawesome.min.css') %>">`  
        `<link rel="stylesheet" href="<%- url_for('/fontawesome-all/css/fontawesome-all.css') %>">`  
        `<link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">`
2. 使用
    * `<i class="fa fa-star fa-x fa-spin"></i>`star图标名，x大小，spin旋转参数
