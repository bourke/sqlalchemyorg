<%inherit file="/base.mako"/>
<%!
    section = 'features'
%>
<%block name="head_title">
Organizations - SQLAlchemy
</%block>

<h1>Organizations using SQLAlchemy</h1>

<p>This is just a partial list of organizations that have 
    rolled out using SQLAlchemy.</p>

<p>Using SQLAlchemy in production ?   We'd love to add your logo and details about your
    company or project here.  Please contact mike(&amp;)zzzcomputing.com.</p>

<%def name="user(name, logo, url, anchor=None)">
    <dt>
        % if anchor:
            <a name="${anchor}"></a>
        % endif
        <a href="${url}"><img src="/img/logos/${logo}" alt="${name}"></a>
    </dt>
    <dd>
        ${caller.body()}
    </dd>
</%def>

<dl id="inproduction">

<%self:user 
        name="Reddit", 
        logo="reddit.png"
        url="http://reddit.com",
        anchor="reddit">
        <a href="http://reddit.com">Reddit</a> is one of the biggest social 
        news aggregators on the internet. Reddit is built using Pylons, Mako templates,
        and a custom database abstraction layer built on SQLAlchemy Core.
</%self:user>

<%self:user 
        name="Firefox Sync", 
        logo="firefox.png"
        url="http://www.firefox.com/sync"
        anchor="firefox">
        <a href="http://www.firefox.com/sync">Firefox Sync</a> is Firefox's built in bookmark synchronization service.
        Core server elements of Firefox Sync are written in Python using SQLAlchemy for backend storage.
</%self:user>


<%self:user 
        name="Fedora Project", 
        logo="fedora-logo.png"
        url="http://fedoraproject.org"
        anchor="fedoraproject">
        <a href="http://fedoraproject.org">Fedora</a> is one of the most widely used Linux distributions.
        According to their developers: 
        "SQLAlchemy powers much of Fedora's Infrastructure. We pretty much worship it :)"
</%self:user>

<%self:user 
        name="SourceForge", 
        logo="sourceforge.png"
        url="http://sourceforge.net"
        anchor="sourceforge">
        <a href="http://sourceforge.net">SourceForge's</a> 
        all new infrastructure uses SQLAlchemy where relational databases
        are used.
</%self:user>

<%self:user 
        name="OpenStack", 
        logo="openstack.png"
        url="http://www.openstack.com"
        anchor="openstack">
        <a href="http://www.openstack.com">OpenStack</a> is an IaaS cloud
        computing project by Rackspace Cloud and NASA joined by several
        companies such as Cloud.com, Citrix Systems, Dell, enStratus, NTT
        Data, PEER 1, RightScale, Cloudkick, Zenoss, Limelight, Scalr, AMD,
        Intel, and Spiceworks. OpenStack Compute uses the SQLAlchemy ORM for
        integration with backend storage.
</%self:user>

<%self:user 
        name="Yelp", 
        logo="yelp.png"
        url="http://www.yelp.com/"
        anchor="yelp">
        <a href="http://www.yelp.com/">Yelp</a>
        is the fun and easy way to find and talk about great (and not so great) local businesses.
        Yelp bases a large portion their MySQL data access code upon SQLAlchemy.
</%self:user>

<%self:user 
        name="LolApps", 
        logo="lolapps.png"
        url="http://www.lolapps.com"
        anchor="lolapps">
        <a href="http://www.lolapps.com">LolApps</a> is one of the fastest growing social games companies.
        As presented in the Pycon 2010 talk <a href="http://us.pycon.org/2010/conference/schedule/event/135/">Scaling Python webapps from zero to 50 million users</a>,
        the SQLAlchemy ORM is at the core of their data access strategy.
</%self:user>


<%self:user 
        name="SurveyMonkey", 
        logo="surveymonkey.png"
        url="http://www.surveymonkey.com/"
        anchor="surveymonkey">
        <a href="http://www.surveymonkey.com/">SurveyMonkey</a>,
        the leader in online surveys, is building its entire stack in Python.
        SurveyMonkey is being built using Pylons/Pyramid, Jinja2 templating and
        a backend data tier built entirely upon SQLAlchemy.
</%self:user>

<%self:user 
        name="FreshBooks", 
        logo="freshbooks.png"
        url="http://www.freshbooks.com/"
        anchor="freshbooks">
        <a href="http://www.freshbooks.com/">Freshbooks</a>
        delivers fast and simple invoicing and time tracking services.  The data tier
        is built entirely upon SQLAlchemy.
</%self:user>

<%self:user 
        name="Lex Machina", 
        logo="lexmachina.jpg"
        url="https://lexmachina.com/"
        anchor="lexmachina">
        <a href="https://lexmachina.com/">Lex Machina</a> began as a joint project between Stanford Law School and the Stanford Computer Science Department seeking to address the dearth of reliable data on IP litigation. 
        Now a private venture, Lex Machina uses the SQLAlchemy ORM extensively as the gateway to their legal database.
</%self:user>

<%self:user
        name="Thumbtack"
        logo="thumbtack.png"
        url="http://www.thumbtack.com/"
        anchor="thumbtack">
        <a href="http://www.thumbtack.com/">Thumbtack</a> gives you the ability to vet, contact and book service professionals online.
        SQLAlchemy is used throughout their backend data services, including their customer recommendation engine.  Per Thumbtack's
        director of engineering, "Needless to say we can deploy updates and improvements to our internal tools much 
        faster because SQLAlchemy saves us so much time!"
</%self:user>

<%self:user
        name="Naumen"
        logo="naumen.gif"
        url="http://naumen.com/"
        anchor="naumen">
        <a href="http://naumen.com/">Naumen</a> 
        is a leading Russian developer of software solutions for businesses and public authorities.
        Areas of expertise include enterprise document management, call- and contact-centers, e-learning, CRM, Help Desk systems. 
        SQLAlchemy is used extensively within the company's Call Center solution. 
</%self:user>

<%self:user 
        name="FanFeedr", 
        logo="fanfeedr.png"
        url="http://fanfeedr.com/">
        <a href="http://fanfeedr.com/">FanFeedr</a> is a sports aggregation site featuring hundreds of thousands of stories from around 
        the globe.  Over thirty sports categories are covered as thousands of articles daily are classified
        and tagged, using SQLAlchemy with PostgreSQL as the core content repository and statistical analysis engine.
</%self:user>

<%self:user 
        name="Adroll", 
        logo="adroll.png"
        url="http://www.adroll.com">
    <a href="http://www.adroll.com">Adroll.com</a> lets online publishers connect and roll up their ad space to form relevant packages of inventory that advertisers can buy. 
    Adroll's platform is built on Pylons using SQLAlchemy with PostgreSQL for data storage.
</%self:user>

<%self:user 
        name="Charlie Rose", 
        logo="charlierose.png"
        url="http://www.charlierose.com/">
<a href="http://www.charlierose.com/">Charlie Rose</a> is the widely viewed PBS show.  Their website offers a full episode and clip archive, on a site built with Pylons and SQLAlchemy. 
</%self:user>

<%self:user 
        name="Jim Henson's CreatureShop", 
        logo="creatureshop.jpg"
        url="http://www.creatureshop.com/">
        One of several high profile animation studios which use SQLAlchemy, <a href="http://www.creatureshop.com/">Jim Henson's Creature Shop</a>
         uses SQLAlchemy internally for asset tracking and within the backend for its render farm. 
</%self:user>

<%self:user 
        name="alaTest", 
        logo="alatest.jpg"
        url="http://alatest.com/">
        <a href="http://alatest.com/">alaTest</a> collects reviews from consumers and experts to help you find the best products on the market.
        SQLAlchemy is used heavily for our datamining and matching technology. 
</%self:user>

<%self:user 
        name="Checkout", 
        logo="checkout.gif"
        url="http://www.checkoutapp.com/">
    <a href="http://www.checkoutapp.com/">Checkout</a> is a desktop
    software application for Mac OSX which turns any Mac into a cash register
    and real-time accounting system.   SQLAlchemy is bundled into the executable
    along with SQLite to implement its storage system.
</%self:user>

<%self:user 
        name="Toolpart Team", 
        logo="toolpart.jpg"
        url="http://toolpart.hu">
        <a href="http://toolpart.hu">Toolpart</a> offers custom business integration and Open ERP solutions.   SQLAlchemy is used for Python projects.
</%self:user>


<%self:user 
        name="The Carbon Account", 
        logo="carbon_account.gif"
        url="http://www.thecarbonaccount.com/">
    <a href="http://www.thecarbonaccount.com/">The Carbon Account</a> helps
    you reduce your carbon footprint and share tips with friends. The site is
    built using a combination of Django and SQLAlchemy against a PostgreSQL
    database.
</%self:user>

<%self:user 
        name="Codepad", 
        logo="codepad.png"
        url="http://www.codepad.org/">
        <a href="http://www.codepad.org/">CodePad.org</a> 
        is an online compiler/interpreter, and a simple collaboration tool,
        written by Steven Hazel, founder of <a href="http://saucelabs.com">Sauce Labs.</a>
        The web site is written in Python, using Pylons and SQLAlchemy. 
</%self:user>

<%self:user 
        name="SiaFoo", 
        logo="siafoo.png"
        url="http://www.siafoo.net/">
        <a href="http://www.siafoo.net/">SiaFoo</a> is a site for storing code
        snippets and programming knowledge. It uses Pylons, SQLAlchemy and
        PostgreSQL.
</%self:user>

<%self:user 
        name="MediaCore", 
        logo="mediacore.png"
        url="http://mediacore.com/">
        <a href="http://mediacore.com">MediaCore</a> is a media content system
        allowing any website to add high quality media delivery. Uses
        SQLAlchemy to manage content.
</%self:user>

<%self:user 
        name="Milo", 
        logo="milo.png"
        url="http://milo.com">
        Real-Time Local Product Search. Uses Django as the framework but with 
        SQLAlchemy dropped in as the ORM on the front-end (and exclusively on the back-end). 
</%self:user>

<%self:user 
        name="TriMet", 
        logo="trimet.png"
        url="http://trimet.org/">
        TriMet provides bus, light rail and commuter rail service in the Portland, Oregon metro area. 
        Pylons and SQLAlchemy are used as the basis for a set of internal GIS/mapping apps, as well as other
        applications.
</%self:user>

<%self:user 
        name="gcollab", 
        logo="gcollab.jpg"
        url="https://www.gcollab.com/">
Global collaborative internet services, built with SQLAlchemy.
</%self:user>

<%self:user 
        name="mapWOC", 
        logo="mapwoc.png"
        url="http://mapwoc.org/">
        <a href="http://mapwoc.org/">mapWOC</a> lets you verify the integrity of websites, and identify malicious 
        content by managing virtual machines with native browsers and
        analysing generated network traffic.  SQLAlchemy ORM is used throughout
        for data management.
</%self:user>

<%self:user 
        name="Mydeco", 
        logo="mydeco.png"
        url="http://mydeco.com/">
        <a href="http://mydeco.com/">Mydeco</a> is a home furnishings and interior design site, built on SQLAlchemy for database access.
</%self:user>

<%self:user 
        name="screenshots.debian.net", 
        logo="screenshots.debian.png"
        url="http://screenshots.debian.net/">
        A repository of Debian screenshots.  Builds on SQLAlchemy and PostgreSQL for data storage.
</%self:user>

<p>Want to be on this list? Let us know! Drop an email to mike(&amp;)zzzcomputing.com</p>
</dl>