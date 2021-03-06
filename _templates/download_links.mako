<%page args="site_base"/>
<%
    release_history = zf.config.release_data
    release_milestones = zf.config.release_milestones

%>

<%def name="major_version(milestone)">\
${release_history[release_milestones[milestone]]['major_version']}</%def>

<ul>

% if 'current' in release_milestones:
    <li><a href="${site_base}/download.html#current">Current Release Series (${major_version("current")})</a></li>
% endif

% if 'maintenance' in release_milestones and 'beta' not in release_milestones:
    <li><a href="${site_base}/download.html#maintenance">Maintenance Release (${major_version("maintenance")})</a></li>
% endif

% if 'beta' in release_milestones:
    <li><a href="${site_base}/download.html#beta">Beta release (${major_version("beta")}</a></li>
% endif
    <li><a href="${site_base}/download.html#development">Development Access</a></li>
    <li><a href="${site_base}/download.html#license">License</a></li>
    <li><a href="${site_base}/download.html#versions">Version Numbering</a></li>
    <li><a href="${site_base}/download.html#relstatus">Release Status</a></li>
</ul>
