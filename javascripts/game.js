(function(){var e,t,n,r,i,s,o,u,a,f,l,c,h,p;u=["wwwwwwwwwwwwwwwwwwwwwwwwwwww","w............ww............w","w.wwww.wwwww.ww.wwwww.wwww.w","w*wwww.wwwww.ww.wwwww.wwww*w","w.wwww.wwwww.ww.wwwww.wwww.w","w..........................w","w.wwww.ww.wwwwwwww.ww.wwww.w","w.wwww.ww.wwwwwwww.ww.wwww.w","w......ww....ww....ww......w","wwwwww.wwwww.ww.wwwww.wwwwww","     w.wwwww ww wwwww.w     ","     w.ww          ww.w     ","     w.ww www  www ww.w     ","wwwwww.ww w      w ww.wwwwww","      .   w      w   .      ","wwwwww.ww w      w ww.wwwwww","     w.ww wwwwwwww ww.w     ","     w.ww          ww.w     ","     w.ww wwwwwwww ww.w     ","wwwwww.ww wwwwwwww ww.wwwwww","w............ww............w","w.wwww.wwwww.ww.wwwww.wwww.w","w.wwww.wwwww.ww.wwwww.wwww.w","w*..ww.......p .......ww..*w","www.ww.ww.wwwwwwww.ww.ww.www","www.ww.ww.wwwwwwww.ww.ww.www","w......ww....ww....ww......w","w.wwwwwwwwww.ww.wwwwwwwwww.w","w.wwwwwwwwww.ww.wwwwwwwwww.w","w..........................w","wwwwwwwwwwwwwwwwwwwwwwwwwwww"],t=document.createElement("canvas"),r=t.getContext("2d"),i=14,t.width=u[0].length*i,t.height=u.length*i,document.body.appendChild(t),e=function(e,t,n){r.beginPath();switch(e){case"w":r.fillStyle="#4455A5",r.rect(t*i,n*i,i,i);break;case".":r.fillStyle="#FFFFFF",r.arc(t*i+i/2,n*i+i/2,2,0,2*Math.PI,!1);break;case"*":r.fillStyle="#FFFFFF",r.arc(t*i+i/2,n*i+i/2,4,0,2*Math.PI,!1);break;case"p":r.fillStyle="yellow",r.arc(t*i+i/2,n*i+i/2,7,0,2*Math.PI,!1)}return r.fill()},a=0,f=0;for(l=0,h=u.length;l<h;l++){o=u[l];for(c=0,p=o.length;c<p;c++)n=o[c],e(n,a,f),a++;f++,a=0}s={},addEventListener("keydown",function(e){return s[e.keyCode]=!0,console.log(e.keyCode)},!1),addEventListener("keyup",function(e){return delete s[e.keyCode]},!1)}).call(this);