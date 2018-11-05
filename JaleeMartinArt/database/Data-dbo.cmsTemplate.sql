
SET NUMERIC_ROUNDABORT OFF
SET ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, ARITHABORT, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET DATEFORMAT YMD
SET XACT_ABORT ON
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE
GO -- SQRIBE/GO;599a15

IF @@ERROR <> 0 SET NOEXEC ON
BEGIN TRANSACTION

-- SQRIBE/TABLE;599a15
PRINT N'Add 2 rows to dbo.cmsTemplate...'
GO -- SQRIBE/GO;599a15

SET IDENTITY_INSERT [dbo].[cmsTemplate] ON
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias],[design]) VALUES (1,1051,N'WebBase',N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@{
    Layout = null;
}

@* the fun starts here *@

<!DOCTYPE HTML>
<html>
<head>
    <title>Overflow by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="/css/main.css" />
    <noscript><link rel="stylesheet" href="/css/noscript.css" /></noscript>
</head>
<body class="is-preload">

    <!-- Header -->
    <section id="header">
        <header>
            <h1>Overflow</h1>
            <p>By HTML5 UP</p>
        </header>
        <footer>
            <a href="#banner" class="button style2 scrolly-middle">Proceed as anticipated</a>
        </footer>
    </section>

    <!-- Banner -->
    <section id="banner">
        <header>
            <h2>This is Overflow</h2>
        </header>
        <p>
            A brand new site template designed by <a href="http://twitter.com/ajlkn">AJ</a> for <a href="http://html5up.net">HTML5 UP</a>.<br />
            It’s responsive, built on HTML5/CSS3, and entirely free<br />
            under the <a href="http://html5up.net/license">Creative Commons license</a>.
        </p>
        <footer>
            <a href="#first" class="button style2 scrolly">Act on this message</a>
        </footer>
    </section>



    @RenderBody()



    <!-- Feature 1 -->
    <article id="first" class="container box style1 right">
        <a href="#" class="image fit"><img src="images/pic01.jpg" alt="" /></a>
        <div class="inner">
            <header>
                <h2>
                    Lorem ipsum<br />
                    dolor sit amet
                </h2>
            </header>
            <p>Tortor faucibus ullamcorper nec tempus purus sed penatibus. Lacinia pellentesque eleifend vitae est elit tristique velit tempus etiam.</p>
        </div>
    </article>

    <!-- Feature 2 -->
    <article class="container box style1 left">
        <a href="#" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
        <div class="inner">
            <header>
                <h2>
                    Mollis posuere<br />
                    lectus lacus
                </h2>
            </header>
            <p>Rhoncus mattis egestas sed fusce sodales rutrum et etiam ullamcorper. Etiam egestas scelerisque ac duis magna lorem ipsum dolor.</p>
        </div>
    </article>

    <!-- Portfolio -->
    <article class="container box style2">
        <header>
            <h2>Magnis parturient</h2>
            <p>
                Justo phasellus et aenean dignissim<br />
                placerat cubilia purus lectus.
            </p>
        </header>
        <div class="inner gallery">
            <div class="row gtr-0">
                <div class="col-3 col-12-mobile"><a href="images/fulls/01.jpg" class="image fit"><img src="images/thumbs/01.jpg" alt="" title="Ad infinitum" /></a></div>
                <div class="col-3 col-12-mobile"><a href="images/fulls/02.jpg" class="image fit"><img src="images/thumbs/02.jpg" alt="" title="Dressed in Clarity" /></a></div>
                <div class="col-3 col-12-mobile"><a href="images/fulls/03.jpg" class="image fit"><img src="images/thumbs/03.jpg" alt="" title="Raven" /></a></div>
                <div class="col-3 col-12-mobile"><a href="images/fulls/04.jpg" class="image fit"><img src="images/thumbs/04.jpg" alt="" title="I''ll have a cup of Disneyland, please" /></a></div>
            </div>
            <div class="row gtr-0">
                <div class="col-3 col-12-mobile"><a href="images/fulls/05.jpg" class="image fit"><img src="images/thumbs/05.jpg" alt="" title="Cherish" /></a></div>
                <div class="col-3 col-12-mobile"><a href="images/fulls/06.jpg" class="image fit"><img src="images/thumbs/06.jpg" alt="" title="Different." /></a></div>
                <div class="col-3 col-12-mobile"><a href="images/fulls/07.jpg" class="image fit"><img src="images/thumbs/07.jpg" alt="" title="History was made here" /></a></div>
                <div class="col-3 col-12-mobile"><a href="images/fulls/08.jpg" class="image fit"><img src="images/thumbs/08.jpg" alt="" title="People come and go and walk away" /></a></div>
            </div>
        </div>
    </article>

    <!-- Contact -->
    <article class="container box style3">
        <header>
            <h2>Nisl sed ultricies</h2>
            <p>Diam dignissim lectus eu ornare volutpat orci.</p>
        </header>
        <form method="post" action="#">
            <div class="row gtr-50">
                <div class="col-6 col-12-mobile"><input type="text" class="text" name="name" placeholder="Name" /></div>
                <div class="col-6 col-12-mobile"><input type="text" class="text" name="email" placeholder="Email" /></div>
                <div class="col-12">
                    <textarea name="message" placeholder="Message"></textarea>
                </div>
                <div class="col-12">
                    <ul class="actions">
                        <li><input type="submit" value="Send Message" /></li>
                    </ul>
                </div>
            </div>
        </form>
    </article>

    <section id="footer">
        <ul class="icons">
            <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
            <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
            <li><a href="#" class="icon fa-google-plus"><span class="label">Google+</span></a></li>
            <li><a href="#" class="icon fa-pinterest"><span class="label">Pinterest</span></a></li>
            <li><a href="#" class="icon fa-dribbble"><span class="label">Dribbble</span></a></li>
            <li><a href="#" class="icon fa-linkedin"><span class="label">LinkedIn</span></a></li>
        </ul>
        <div class="copyright">
            <ul class="menu">
                <li>&copy; Untitled. All rights reserved.</li>
                <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
            </ul>
        </div>
    </section>

    <!-- Scripts -->
    <script src="/scripts/jquery.min.js"></script>
    <script src="/scripts/jquery.scrolly.min.js"></script>
    <script src="/scripts/jquery.poptrox.min.js"></script>
    <script src="/scripts/browser.min.js"></script>
    <script src="/scripts/breakpoints.min.js"></script>
    <script src="/scripts/util.js"></script>
    <script src="/scripts/main.js"></script>

</body>
</html>

');
-- SQRIBE/INSERT;599a15
INSERT INTO [dbo].[cmsTemplate] ([pk],[nodeId],[alias],[design]) VALUES (4,1055,N'Home',N'@inherits Umbraco.Web.Mvc.UmbracoTemplatePage
@{
	Layout = "WebBase.cshtml";
}

@* the fun starts here *@

');

IF @@ERROR <> 0 SET NOEXEC ON

COMMIT TRANSACTION

IF @@ERROR <> 0 SET NOEXEC ON

DECLARE @Success AS BIT
SET @Success = 1
SET NOEXEC OFF

IF (@Success = 1) PRINT 'Restore table data dbo.cmsTemplate succeeded'
ELSE BEGIN
    IF @@TRANCOUNT > 0 ROLLBACK TRANSACTION
    PRINT 'Restore table data dbo.cmsTemplate failed'
END

SET IDENTITY_INSERT [dbo].[cmsTemplate] OFF
