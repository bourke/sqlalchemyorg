<%inherit file="/base.mako"/>
<%page args="all=False"/>
<%!
    section = 'news'
%>

<%
    news = []
    self.include_file("/news_data.mako", container=news)
    max = 7
    count = 0
%>

<%def name="title()">
News - SQLAlchemy
</%def>


<h1>News</h1>
<div id="news">

% for entry in news:
<%
    count += 1
    if not all and count>max:
        break
    elif all and count == max + 1:
        context.write("<a name='older'>")
%>
<div class="entry">
<h2><a name="${entry['id']}"></a><a href="#${entry['id']}">${entry['headline']}</a></h2>
<div class="date">${entry['formatted_date']}</div>
${entry['body']}
</div>
% endfor

% if not all:
<a href="allnews.html#older"><b>View Older News</b></a>
% endif
</div>