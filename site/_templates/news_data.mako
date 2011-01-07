## coding:utf-8
<%page args="container"/>
<%!
    import datetime
    def format_date(date):
        return date.strftime("%a, %d %b %Y")
%>

<%def name="newsitem(headline, date)">
	<%
		id = "item_%d" % (len(container) + 1)
		container.append({'id':id,'headline':headline, 'date':date, 'formatted_date':format_date(date), 'body':capture(caller.body)})	
	%>
</%def>

<%call expr="newsitem(headline='SQLAlchemy 0.7 In Development', date=datetime.date(2010, 12, 5))">
<p>SQLAlchemy 0.7 is in active development and close to beta releases, featuring an all new
unified event model as well as a host of other ORM and SQL engine features and improvements.
The "Whats New" page for SQLAlchemy 0.7 is under construction at <a href="/trac/wiki/07Migration">07Migration</a>.
</p>
</%call>

<%call expr="newsitem(headline='SQLAlchemy 0.6 Released', date=datetime.date(2010, 4, 18))">
<p>
SQLAlchemy 0.6 is now released.   This release is the culmination of well over a year
of effort towards restructuring and enhancements.   Highlights of SQLAlchemy 0.6 include:
</p>
<ul>
<li>Support for Python 2.4+, Python 3, and Jython</li>
<li>Decouping of DBAPI adapters and database dialects allow any number of DBAPIs to be 
cleanly supported.</li>
<li>Support for Sybase, mxODBC, pg8000, py-postgresql, OurSQL, 
MySQL-Connector-Python, zxjdbc is added, including new options and capabilities for
many dialects (see the <a href="/docs/dbengine.html?highlight=engines#supported-databases">compatibility chart</a>).
</li>
<li>Enhancements to "eager loading", including a new "subquery" eagerload that loads all collections
using a maximally efficient query-per-relationship scheme.</li>
<li>An entirely new unit of work system which runs more effectively and simply, using less memory and
CPU.</li>
<li>A flexible SQL compiler and execution system, now supporting RETURNING clauses 
when available,  
 clause constructs for DDL elements (i.e. CREATE TABLE) and type objects,
 stricter SQL standard compliance where needed, and an extension system allowing the creation of new SQL 
constructs and open-ended extension to those provided. 
</li>
<li>Query result caching capability, including an example illustrating integration with Beaker.</li>
</ul>

<p>SQLAlchemy 0.6 has already been in production usage for several months and has been tested by hundreds.
Be sure to review the full list of whats new at <a href="/trac/wiki/06Migration">06Migration</a>.


</%call>

<%call expr="newsitem(headline='Pycon 2010 Sprints the Biggest Ever', date=datetime.date(2010, 2, 25))">
<p>
The sprinting continues today in Atlanta after a week where at least a dozen people got involved,
some new to SQLAlchemy, some veterans.   New things coming out include our <a href="http://buildbot.sqlalchemy.org/">all-new
buildbot</a>, as well as several new dialects which are Python 3 compatible - PyPostgreql, OurSQL, MySQL-connector-Python.  Python 3 tests
are passing 100% for pg8000 and OurSQL, so Postgresql and MySQL are now covered for Python 3.  We also have mxODBC for MSSQL in the
works and have made a great leap forward in getting real Sybase support.   Plus documentation updates galore, new
declarative features, and a whole host of fixes and enhancements elsewhere.   We'll soon be posting
links to SQLAlchemy related talks and tutorials from Pycon 2010 as they become available.  Thanks to 
everyone for the huge amount of involvement and stay tuned for SQLAlchemy 0.6 !

</p>
</%call>

<%call expr="newsitem(headline='SQLAlchemy 0.6 On Its Way', date=datetime.date(2009, 8, 7))">

<p>SQLAlchemy 0.6 is now on trunk, with release candidates to come soon.   Jython compatibility
is near 100% for MySQL and Postgresql, with work being done for Oracle + JDBC as well.
Oracle tests using cPython pass at 100% and compatibility is also introduced for MSSQL
via PyODBC with FreeTDS, allowing any unix platform to access MSSQL (one user is testing
it against Sybase ASE as well with a good deal of success).  INSERT RETURNING support
is also implemented natively for Postgresql, Oracle, MSSQL and Firebird and is used when
available to fetch newly generated primary key identifiers.</p>
<p>
The release of 0.6 will solidify the best architecture yet for maximum Python platform, DBAPI,
and database backend compatibility, allowing new DBAPIs and architectures to be plugged in
with minimal hacking.
</p>
<p>The in-progress documentation of what's new is at <a href="/trac/wiki/06Migration">06Migration</a>.
</p>
</%call>


<%call expr="newsitem(headline='Python 3K, pg8000 Support in SQLAlchemy 0.6', date=datetime.date(2009, 6, 2))">
As of this past weekend, <a href="http://twitter.com/zzzeek/status/1984474807">100% of tests pass</a> on Python 3000 using
the up-and-coming 0.6 series of SQLAlchemy, while running on sqlite via the sqlite3 adapter
as well as Postgresql via the <a href="http://pybrary.net/pg8000/">pg8000</a> DBAPI.   
Jython compatibility is largely present as well.   The 0.6 series has
a special focus on environment and dialect compatibility, as well as on schema construct and DDL improvements.  
Developers will have full access to new expression constructs such as CREATE TABLE and ADD CONSTRAINT, with the ability
to define new ones.  It is now possible to construct custom create/drop sequences which add constraints, triggers 
and other DDL using rules that are sensitive to the underlying database in use - and will allow smoother integration
with <a href="http://code.google.com/p/sqlalchemy-migrate/">sqlalchemy-migrate</a> too.  0.6 should be merged to trunk
soon with alpha releases by mid-summer.
</%call>

<%call expr="newsitem(headline='SQLAlchemy 0.5.0 Released', date=datetime.date(2009, 01, 06))">
In progress since Pycon 2008, the first official release of the 0.5 series is now available.  This version packs a huge amount of change since 0.4 including multiple paradigm shifts in usage as well as countless bugfixes and behavioral and speed improvements.  Through a series of prereleases, 0.5 is already on production systems and has been extensively tested by dozens of users.  With the first 0.5 release, 0.6 is underway as well and will be where Py3k support is targeted.  SQLAlchemy 0.5 is available for download on the <a href="/download.html">download page</a>.  A comprehensive migration document is at <a href="/trac/wiki/05Migration">05Migration</a>.
</%call>

<%call expr="newsitem(headline='Checkout Now Available at the Apple Store', date=datetime.date(2008, 06, 02))">
<a href="http://store.apple.com/us/product/TQ927LL/A"><img src="/img/checkout.jpg"/></a><a href="http://www.checkoutapp.com/">Checkout</a> 2.0 is now available from every Apple store as well straight from <a href="http://www.madebysofa.com/">Madebysofa</a>; it's the software that turns any Mac into an event-driven networked cash register and inventory system.  Version 2.0 is built entirely on SQLAlchemy interfacing with SQLite.  The guys from Madebysofa just shipped me a free boxed copy (shown at left).  SQLAlchemy however has no plans to start charging ;) .
</%call>

