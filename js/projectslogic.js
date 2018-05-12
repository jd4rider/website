var loopy = '';
for(var i in projects){
    loopy += '<div class="col-md-4 grow"><a  href="'+projects[i]["link"]+'" target="_blank"><img  src="/images/'+projects[i]["title"]+'/'+projects[i]["pictures"][0]+'" alt="'+projects[i]["description"]+'" height="250" width="300"></a><h3>'+projects[i]["title"]+'</h3><p>'+projects[i]["description"]+'</p></div>'  
}

var projectshtml = `
    <div class="row">
        `+loopy+`
    </div>`

$("projects").html(projectshtml);
