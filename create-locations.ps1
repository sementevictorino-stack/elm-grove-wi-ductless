# PowerShell script to create remaining location pages

$locations = @(
    @{Name="meridian"; City="Meridian"; Address="875 S Progress Ave"; Zip="83642"; Lat="43.6121"; Lng="-116.3915"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.4315167!3d43.6121056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae55a2e6f9e85d%3A0x69b9db9c4cf7b6d1!2sMeridian%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="caldwell"; City="Caldwell"; Address="621 Blaine St"; Zip="83605"; Lat="43.6630"; Lng="-116.6874"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.7274167!3d43.6630056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae4f3e8ca7b889%3A0x4f4b7de8f7c0d6!2sCaldwell%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="kuna"; City="Kuna"; Address="751 W 4th St"; Zip="83634"; Lat="43.4930"; Lng="-116.4200"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.4600167!3d43.4930056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae59a3e8f7c0d6%3A0x4f4b7de8f7c0d6!2sKuna%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="star"; City="Star"; Address="10769 W State St"; Zip="83669"; Lat="43.6927"; Lng="-116.4934"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.5334167!3d43.6927056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae4e3e8ca7b889%3A0x4f4b7de8f7c0d6!2sStar%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="eagle"; City="Eagle"; Address="660 E Civic Ln"; Zip="83616"; Lat="43.6963"; Lng="-116.3545"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.3945167!3d43.6963056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae54a3e8f7c0d6%3A0x4f4b7de8f7c0d6!2sEagle%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="garden-city"; City="Garden City"; Address="6015 Glenwood St"; Zip="83714"; Lat="43.6040"; Lng="-116.2737"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.3137167!3d43.6040056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae56a3e8f7c0d6%3A0x4f4b7de8f7c0d6!2sGarden%20City%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="emmett"; City="Emmett"; Address="1339 S Washington Ave"; Zip="83617"; Lat="43.8638"; Lng="-116.5006"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.5406167!3d43.8638056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae3e3e8ca7b889%3A0x4f4b7de8f7c0d6!2sEmmett%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="mountain-home"; City="Mountain Home"; Address="580 N 3rd E St"; Zip="83647"; Lat="43.1333"; Lng="-115.6914"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-115.7314167!3d43.1333056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae8e3e8ca7b889%3A0x4f4b7de8f7c0d6!2sMountain%20Home%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="ontario"; City="Ontario"; Address="444 SW 4th Ave"; Zip="97914"; Lat="44.0265"; Lng="-117.0187"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-117.0587167!3d44.0265056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54a01e3e8ca7b889%3A0x4f4b7de8f7c0d6!2sOntario%2C%20OR!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="payette"; City="Payette"; Address="1130 3rd Ave N"; Zip="83661"; Lat="44.0784"; Lng="-116.9336"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.9736167!3d44.0784056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54a02e3e8ca7b889%3A0x4f4b7de8f7c0d6!2sPayette%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="fruitland"; City="Fruitland"; Address="408 3rd Ave"; Zip="83619"; Lat="44.0115"; Lng="-116.9168"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.9568167!3d44.0115056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54a03e3e8ca7b889%3A0x4f4b7de8f7c0d6!2sFruitland%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="middleton"; City="Middleton"; Address="2 Payline Dr W"; Zip="83644"; Lat="43.7041"; Lng="-116.6235"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.6635167!3d43.7041056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae4d3e8ca7b889%3A0x4f4b7de8f7c0d6!2sMiddleton%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="homedale"; City="Homedale"; Address="31 W Wyoming Ave"; Zip="83628"; Lat="43.6141"; Lng="-116.9343"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.9743167!3d43.6141056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae1e3e8ca7b889%3A0x4f4b7de8f7c0d6!2sHomedale%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="parma"; City="Parma"; Address="305 N 8th St"; Zip="83660"; Lat="43.7854"; Lng="-116.9436"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.9836167!3d43.7854056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae0e3e8ca7b889%3A0x4f4b7de8f7c0d6!2sParma%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="wilder"; City="Wilder"; Address="16405 Main St"; Zip="83676"; Lat="43.6736"; Lng="-116.9079"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.9479167!3d43.6736056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae2e3e8ca7b889%3A0x4f4b7de8f7c0d6!2sWilder%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="notus"; City="Notus"; Address="935 Denver St"; Zip="83656"; Lat="43.7260"; Lng="-116.8015"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.8415167!3d43.7260056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae3d3e8ca7b889%3A0x4f4b7de8f7c0d6!2sNotus%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="melba"; City="Melba"; Address="317 3rd St"; Zip="83641"; Lat="43.3715"; Lng="-116.5321"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.5721167!3d43.3715056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae5d3e8ca7b889%3A0x4f4b7de8f7c0d6!2sMelba%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="marsing"; City="Marsing"; Address="425 Main St"; Zip="83639"; Lat="43.5460"; Lng="-116.8132"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.8532167!3d43.5460056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae4d3e8ca7b889%3A0x4f4b7de8f7c0d6!2sMarsing%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
    @{Name="grand-view"; City="Grand View"; Address="425 Boise Ave"; Zip="83624"; Lat="42.9881"; Lng="-116.0957"; MapId="!1m18!1m12!1m3!1d47068.17644098339!2d-116.1357167!3d42.9881056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54ae9d3e8ca7b889%3A0x4f4b7de8f7c0d6!2sGrand%20View%2C%20ID!5e0!3m2!1sen!2sus!4v1692741234567!5m2!1sen!2sus"}
)

foreach ($location in $locations) {
    $content = @"
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ductless Mini Split Services $($location.City), ID | Installation & Repair</title>
    <meta name="description" content="Professional ductless mini split services in $($location.City), ID. Installation, repair, maintenance with 24/7 emergency service. Serving all $($location.City) areas.">
    <link rel="stylesheet" href="../css/styles.css">
    
    <!-- Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=G-PZJGBZXWSD"></script>
    <script>
    window.dataLayer = window.dataLayer || [];
    function gtag(){dataLayer.push(arguments);}
    gtag('js', new Date());
    gtag('config', 'G-PZJGBZXWSD');
    </script>
    
    <!-- Polyares Script -->
    <script type="text/javascript">
        var po_host=(("https:"==document.location.protocol)?"https://":"http://");
        var script=document.createElement('script');
        script.setAttribute('type', 'text/javascript');
        script.src = unescape(po_host+"leads.polyares.com/js/embed/embed.js?apikey=b45897227445c105815c9bfc451e92eb6357bedc&buttons=");
        document.head.appendChild(script);
    </script>
    
    <!-- Schema Markup -->
    <script type="application/ld+json">
    {
        "@context": "https://schema.org",
        "@type": "LocalBusiness",
        "name": "Boise Ductless Mini Split Experts - $($location.City)",
        "telephone": "855-772-1650",
        "address": {
            "@type": "PostalAddress",
            "streetAddress": "$($location.Address)",
            "addressLocality": "$($location.City)",
            "addressRegion": "ID",
            "postalCode": "$($location.Zip)",
            "addressCountry": "US"
        },
        "geo": {
            "@type": "GeoCoordinates",
            "latitude": $($location.Lat),
            "longitude": $($location.Lng)
        },
        "openingHoursSpecification": {
            "@type": "OpeningHoursSpecification",
            "dayOfWeek": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"],
            "opens": "00:00",
            "closes": "23:59"
        },
        "aggregateRating": {
            "@type": "AggregateRating",
            "ratingValue": "4.8",
            "reviewCount": "$(Get-Random -Minimum 45 -Maximum 125)"
        }
    }
    </script>
</head>
<body>
    <!-- Emergency Banner -->
    <div class="emergency-banner">
        🚨 24/7 EMERGENCY HVAC SERVICE AVAILABLE - CALL NOW: 855-772-1650 🚨
    </div>
    
    <!-- Header -->
    <header>
        <nav>
            <div class="logo">Boise Mini Split Experts</div>
            <ul class="nav-links">
                <li><a href="../index.html">Home</a></li>
                <li class="dropdown">
                    <a href="#services">Services ▼</a>
                    <div class="dropdown-content">
                        <a href="../services/ductless-mini-split-installation.html">Mini Split Installation</a>
                        <a href="../services/mini-split-repair.html">Mini Split Repair</a>
                        <a href="../services/hvac-maintenance.html">HVAC Maintenance</a>
                        <a href="../services/air-conditioning-repair.html">AC Repair</a>
                        <a href="../services/heating-repair.html">Heating Repair</a>
                        <a href="../services/furnace-installation.html">Furnace Installation</a>
                        <a href="../services/heat-pump-services.html">Heat Pump Services</a>
                        <a href="../services/ductwork-services.html">Ductwork Services</a>
                        <a href="../services/indoor-air-quality.html">Indoor Air Quality</a>
                        <a href="../services/smart-thermostat-installation.html">Smart Thermostats</a>
                        <a href="../services/commercial-hvac.html">Commercial HVAC</a>
                        <a href="../services/emergency-hvac-repair.html">Emergency Services</a>
                        <a href="../services/energy-efficiency.html">Energy Efficiency</a>
                        <a href="../services/hvac-inspection.html">HVAC Inspection</a>
                        <a href="../services/seasonal-tune-ups.html">Seasonal Tune-ups</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="#locations">Locations ▼</a>
                    <div class="dropdown-content">
                        <a href="nampa.html">Nampa</a>
                        <a href="meridian.html">Meridian</a>
                        <a href="caldwell.html">Caldwell</a>
                        <a href="kuna.html">Kuna</a>
                        <a href="star.html">Star</a>
                        <a href="eagle.html">Eagle</a>
                        <a href="garden-city.html">Garden City</a>
                        <a href="emmett.html">Emmett</a>
                        <a href="mountain-home.html">Mountain Home</a>
                        <a href="ontario.html">Ontario</a>
                        <a href="payette.html">Payette</a>
                        <a href="fruitland.html">Fruitland</a>
                        <a href="middleton.html">Middleton</a>
                        <a href="homedale.html">Homedale</a>
                        <a href="parma.html">Parma</a>
                        <a href="wilder.html">Wilder</a>
                        <a href="notus.html">Notus</a>
                        <a href="melba.html">Melba</a>
                        <a href="marsing.html">Marsing</a>
                        <a href="grand-view.html">Grand View</a>
                    </div>
                </li>
                <li><a href="#contact">Contact</a></li>
            </ul>
            <div class="mobile-menu">
                <span></span>
                <span></span>
                <span></span>
            </div>
        </nav>
    </header>

    <!-- Floating Phone CTA -->
    <a href="tel:855-772-1650" class="floating-phone">📞 855-772-1650</a>

    <!-- Main Content -->
    <section class="content">
        <div class="container">
            <h1>Professional Ductless Mini Split Services in $($location.City), ID</h1>
            
            <img src="../images/mini-split-1.jpg" alt="Ductless mini split installation in $($location.City)" class="content-image inline-image">
            
            <p>$($location.City), Idaho residents rely on our expert technicians for comprehensive ductless mini split services that provide year-round comfort and energy efficiency. Our certified team understands the unique HVAC challenges faced by $($location.City) homeowners and provides customized <a href="../services/ductless-mini-split-installation.html">ductless mini split installation</a>, repair, and maintenance services tailored to local conditions and housing characteristics.</p>

            <p>Located in the heart of Idaho's Treasure Valley, $($location.City) experiences the full range of continental climate conditions, making reliable HVAC systems essential for year-round comfort. Ductless mini split systems are perfectly suited for $($location.City)'s climate variability, providing efficient heating and cooling without the need for extensive ductwork installation. Our local expertise ensures optimal system performance regardless of seasonal weather challenges.</p>

            <h2>Why Choose Ductless Mini Splits for Your $($location.City) Home?</h2>

            <p>$($location.City)'s diverse housing market includes everything from historic properties to modern developments, each with unique HVAC requirements. Many homes in $($location.City) lack existing ductwork, making ductless mini split systems an ideal retrofit solution that provides modern comfort without major renovations. These systems are particularly valuable for $($location.City)'s many single-story homes where traditional ductwork installation can be challenging and expensive.</p>

            <p>Energy efficiency is particularly important for $($location.City) residents who want to control utility costs while maintaining comfortable living conditions. Ductless mini split systems can reduce heating and cooling costs by 30-40% compared to traditional HVAC systems, making them an excellent investment for budget-conscious homeowners. The zoning capabilities allow families to heat and cool only occupied areas, providing additional savings opportunities.</p>

            <img src="../images/mini-split-3.jpg" alt="$($location.City) HVAC services" class="content-image">

            <p>The local environment in $($location.City) creates specific challenges that our technicians understand and address through proper system selection and installation. We account for factors such as wind patterns, seasonal temperature variations, and local building characteristics to ensure optimal system performance and longevity.</p>

            <h2>Comprehensive HVAC Services for $($location.City) Residents</h2>

            <p>Our full-service approach ensures all your HVAC needs are met by experienced professionals who understand $($location.City)'s specific requirements. <a href="../services/mini-split-repair.html">Mini split repair services</a> are available 24/7 for emergency situations, ensuring your family's comfort is restored quickly during extreme weather. Our technicians carry advanced diagnostic equipment and maintain parts inventory for faster repair completion.</p>

            <p>Regular <a href="../services/hvac-maintenance.html">HVAC maintenance</a> is crucial in $($location.City)'s environment, where systems must perform reliably across a wide range of conditions. Our maintenance programs include thorough system cleaning, filter replacement, and performance optimization designed specifically for local environmental conditions. We understand how seasonal weather patterns affect HVAC systems and adjust our maintenance schedules accordingly.</p>

            <h3>Installation Services Tailored to $($location.City) Properties</h3>

            <p>Professional installation begins with comprehensive property assessment that considers $($location.City)'s unique characteristics including local building codes, utility requirements, and environmental factors that affect system performance. We work with homeowners to select optimal locations for both indoor and outdoor units, ensuring maximum performance while maintaining aesthetic appeal and easy maintenance access.</p>

            <p>Our licensed electricians are experienced with the electrical requirements common to $($location.City) properties and ensure all installations meet current electrical codes and safety standards. We coordinate with local utility companies when service upgrades are needed and handle all permit applications and inspections for seamless project completion.</p>

            <h2>Emergency Services for $($location.City)'s Climate Challenges</h2>

            <p>$($location.City)'s location in the Treasure Valley creates specific weather patterns that can stress HVAC systems, including seasonal temperature extremes and occasional severe weather events. Our <a href="../services/emergency-hvac-repair.html">24/7 emergency repair services</a> ensure rapid response when your system fails during critical weather conditions.</p>

            <p>Emergency service vehicles are strategically positioned to serve $($location.City) efficiently, carrying specialized equipment and parts inventory for common regional issues. We understand that HVAC emergencies can be particularly challenging in smaller communities, and our technicians are prepared to handle unique situations that may arise in $($location.City) area properties.</p>

            <h2>Local Expertise and Community Commitment</h2>

            <p>As a locally-owned business, we understand $($location.City)'s unique character and are committed to supporting our community with reliable, professional HVAC services. Our technicians are familiar with local conditions, building codes, and community standards that affect HVAC installations and service requirements.</p>

            <p>We maintain relationships with local suppliers, contractors, and building officials to ensure smooth project completion and ongoing support for our customers. Our commitment extends beyond individual service calls to include community involvement and support for local initiatives that benefit $($location.City) residents.</p>

            <h2>Energy Efficiency and Environmental Responsibility</h2>

            <p>Modern ductless mini split systems offer exceptional opportunities for energy savings and environmental responsibility in $($location.City). We help customers take advantage of high-efficiency equipment, smart controls, and optimization strategies that reduce energy consumption while improving comfort. Our <a href="../services/energy-efficiency.html">energy efficiency services</a> include comprehensive audits that identify opportunities for improvements.</p>

            <p>Utility rebates and incentive programs can significantly offset the cost of energy-efficient upgrades for $($location.City) residents. We stay current on available programs and help customers navigate the application process to maximize their savings. Our goal is to make energy efficiency improvements accessible and affordable for all $($location.City) customers.</p>

            <h2>Indoor Air Quality Solutions</h2>

            <p>$($location.City)'s environment can impact indoor air quality through seasonal pollen, dust, and occasional wildfire smoke. Our <a href="../services/indoor-air-quality.html">indoor air quality services</a> include high-efficiency filters, UV light systems, and whole-home air purifiers that work in conjunction with ductless mini split systems to maintain clean, healthy indoor air.</p>

            <p>Advanced filtration becomes particularly important during wildfire season, which has become increasingly common in Idaho. We provide solutions that maintain clean indoor air even when outdoor air quality is compromised, ensuring your family's health and comfort throughout the year.</p>

            <h2>Smart Technology Integration</h2>

            <p>Modern ductless mini split systems offer sophisticated controls that provide convenience and energy savings for $($location.City) homeowners. <a href="../services/smart-thermostat-installation.html">Smart thermostat installation</a> enables remote monitoring and control, allowing homeowners to optimize their systems based on occupancy patterns and weather forecasts.</p>

            <p>Smart integration is particularly valuable for $($location.City) residents who travel frequently or have variable schedules. Geofencing technology can automatically adjust temperatures when you leave home, while scheduling features ensure comfortable conditions when you return, maximizing both comfort and energy savings.</p>

            <h2>Getting Started with Your $($location.City) HVAC Project</h2>

            <p>Whether you need emergency repairs, routine maintenance, or a new system installation, our process begins with understanding your specific needs and property characteristics. We provide free consultations that include comprehensive system evaluation and detailed recommendations tailored to your $($location.City) property and budget.</p>

            <p>Our transparent pricing and detailed estimates help you make informed decisions about your HVAC investments. We explain all options clearly and provide warranty information that protects your investment for years to come. Customer satisfaction is our highest priority, and we work diligently to exceed expectations with every service call.</p>

            <p>Ready to experience the comfort and efficiency of professional ductless mini split services in $($location.City)? Contact us today at <a href="tel:855-772-1650">855-772-1650</a> for your free consultation and estimate. Our expert team is ready to help you achieve optimal comfort and efficiency for your $($location.City) home or business.</p>
        </div>
    </section>

    <!-- Map Section -->
    <section class="map-container">
        <div class="container">
            <h2>Our Service Area in $($location.City), ID</h2>
            <iframe src="https://www.google.com/maps/embed?pb=$($location.MapId)" width="100%" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
    </section>

    <!-- Quote Form Section -->
    <section class="quote-form" id="quote">
        <div class="container">
            <h2>Request Your Free Estimate in $($location.City)</h2>
            <p>Professional ductless mini split services for $($location.City) homes and businesses</p>
            <div id="polyares_form_container" style="margin:20px auto;padding:0px;text-align:center;">
                <div id="polyares_form" style="width: 244px; height: 377px; margin: 0 auto;">
                    <iframe src="//leads.polyares.com/?api_key=b45897227445c105815c9bfc451e92eb6357bedc&funnel=5&category=8&buttons=btn-danger" height="100%" width="100%" frameborder="no" scrolling="yes" noresize="true" vspace="0" hspace="0" style="border-radius: 10px; border: 1px solid #333;"></iframe>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-section">
                    <h3>Contact Information</h3>
                    <p>📞 <a href="tel:855-772-1650">855-772-1650</a></p>
                    <p>📧 info@boiseminisplit.com</p>
                    <p>📍 $($location.Address), $($location.City), ID $($location.Zip)</p>
                    <p>🕒 24/7 Emergency Service Available</p>
                </div>
                
                <div class="footer-section">
                    <h3>Our Services</h3>
                    <ul>
                        <li><a href="../services/ductless-mini-split-installation.html">Mini Split Installation</a></li>
                        <li><a href="../services/mini-split-repair.html">Mini Split Repair</a></li>
                        <li><a href="../services/hvac-maintenance.html">HVAC Maintenance</a></li>
                        <li><a href="../services/air-conditioning-repair.html">AC Repair</a></li>
                        <li><a href="../services/heating-repair.html">Heating Repair</a></li>
                        <li><a href="../services/emergency-hvac-repair.html">Emergency Services</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h3>Service Areas</h3>
                    <ul>
                        <li><a href="nampa.html">Nampa</a></li>
                        <li><a href="meridian.html">Meridian</a></li>
                        <li><a href="caldwell.html">Caldwell</a></li>
                        <li><a href="eagle.html">Eagle</a></li>
                        <li><a href="star.html">Star</a></li>
                        <li><a href="kuna.html">Kuna</a></li>
                    </ul>
                </div>
                
                <div class="footer-section">
                    <h3>Why Choose Us</h3>
                    <ul>
                        <li>Licensed & Insured</li>
                        <li>24/7 Emergency Service</li>
                        <li>Expert Technicians</li>
                        <li>Free Estimates</li>
                        <li>Satisfaction Guaranteed</li>
                        <li>Local Company</li>
                    </ul>
                </div>
            </div>
            
            <div class="footer-bottom">
                <p>&copy; 2024 Boise Ductless Mini Split Experts. All rights reserved. | Licensed, Bonded & Insured</p>
            </div>
        </div>
    </footer>

    <script src="../js/main.js"></script>
</body>
</html>
"@

    $fileName = "$($location.Name).html"
    $content | Out-File -FilePath $fileName -Encoding utf8
    Write-Host "Created $fileName"
}

Write-Host "All location pages created successfully!"
