// Service pages data
const servicePages = [
    {
        filename: 'hvac-maintenance.html',
        title: 'HVAC Maintenance Cedarburg WI | Professional HVAC Service & Tune-Ups',
        description: 'Expert HVAC maintenance in Cedarburg, WI. Preventive maintenance, tune-ups, filter replacement. Extend system life, improve efficiency. Call (888) 918-9104.',
        h1: 'Professional HVAC Maintenance Services',
        subtitle: 'Keep Your Systems Running Efficiently in Cedarburg, WI',
        serviceType: 'HVAC Maintenance'
    },
    {
        filename: 'air-conditioning-installation.html',
        title: 'Air Conditioning Installation Cedarburg WI | Central AC & Ductless Systems',
        description: 'Professional air conditioning installation in Cedarburg, WI. Central AC, ductless systems, heat pumps. Expert installation, free estimates. Call (888) 918-9104.',
        h1: 'Expert Air Conditioning Installation',
        subtitle: 'Cool Comfort Solutions for Cedarburg Homes',
        serviceType: 'Air Conditioning Installation'
    },
    {
        filename: 'heating-system-repair.html',
        title: 'Heating System Repair Cedarburg WI | Furnace & Heat Pump Repair',
        description: 'Expert heating system repair in Cedarburg, WI. Furnace repair, heat pump service, emergency heating. 24/7 service available. Call (888) 918-9104.',
        h1: 'Professional Heating System Repair',
        subtitle: 'Reliable Heating Solutions in Cedarburg, WI',
        serviceType: 'Heating System Repair'
    },
    {
        filename: 'indoor-air-quality.html',
        title: 'Indoor Air Quality Solutions Cedarburg WI | Air Purification & Filtration',
        description: 'Improve indoor air quality in Cedarburg, WI. Air purifiers, humidifiers, UV lights, filtration systems. Breathe cleaner air. Call (888) 918-9104.',
        h1: 'Indoor Air Quality Solutions',
        subtitle: 'Breathe Cleaner, Healthier Air in Your Cedarburg Home',
        serviceType: 'Indoor Air Quality'
    },
    {
        filename: 'commercial-hvac.html',
        title: 'Commercial HVAC Cedarburg WI | Business Heating & Cooling Solutions',
        description: 'Commercial HVAC services in Cedarburg, WI. Business heating, cooling, maintenance, emergency repair. Professional service for all businesses. Call (888) 918-9104.',
        h1: 'Commercial HVAC Solutions',
        subtitle: 'Professional Heating & Cooling for Cedarburg Businesses',
        serviceType: 'Commercial HVAC'
    },
    {
        filename: 'emergency-hvac-repair.html',
        title: '24/7 Emergency HVAC Repair Cedarburg WI | Urgent Heating & Cooling Service',
        description: '24/7 emergency HVAC repair in Cedarburg, WI. Urgent heating and cooling service, same-day repairs, certified technicians. Call (888) 918-9104 now!',
        h1: '24/7 Emergency HVAC Repair',
        subtitle: 'Urgent Heating & Cooling Service in Cedarburg, WI',
        serviceType: 'Emergency HVAC Repair'
    },
    {
        filename: 'heat-pump-services.html',
        title: 'Heat Pump Services Cedarburg WI | Installation, Repair & Maintenance',
        description: 'Heat pump services in Cedarburg, WI. Installation, repair, maintenance for all heat pump systems. Energy-efficient solutions. Call (888) 918-9104.',
        h1: 'Complete Heat Pump Services',
        subtitle: 'Efficient Heating & Cooling Solutions in Cedarburg, WI',
        serviceType: 'Heat Pump Services'
    },
    {
        filename: 'ductwork-services.html',
        title: 'Ductwork Services Cedarburg WI | Duct Installation, Cleaning & Repair',
        description: 'Professional ductwork services in Cedarburg, WI. Duct installation, cleaning, repair, sealing. Improve airflow and efficiency. Call (888) 918-9104.',
        h1: 'Professional Ductwork Services',
        subtitle: 'Optimize Your Home\'s Airflow in Cedarburg, WI',
        serviceType: 'Ductwork Services'
    }
];

// Location pages data
const locationPages = [
    {
        filename: 'milwaukee-wi.html',
        title: 'Ductless Mini Splits Milwaukee WI | Professional HVAC Installation & Repair',
        description: 'Expert ductless mini split services in Milwaukee, WI. Professional installation, repair, maintenance. 24/7 emergency service. Call (888) 918-9104.',
        h1: 'Ductless Mini Splits in Milwaukee, Wisconsin',
        city: 'Milwaukee',
        zipCodes: ['53201', '53202', '53203', '53204', '53205', '53206', '53207', '53208', '53209', '53210'],
        address: '1234 N Water St, Milwaukee, WI 53202',
        mapEmbed: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d92681.89071240654!2d-87.96560155317532!3d43.0642471194847!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8805398ca39ab521%3A0x7e6c0b8a6a8de95!2sMilwaukee%2C%20WI!5e0!3m2!1sen!2sus!4v1692123456789!5m2!1sen!2sus'
    },
    {
        filename: 'mequon-wi.html',
        title: 'Ductless Mini Splits Mequon WI | Expert HVAC Services & Installation',
        description: 'Professional ductless mini split services in Mequon, WI. Installation, repair, maintenance by certified technicians. Free estimates. Call (888) 918-9104.',
        h1: 'Ductless Mini Splits in Mequon, Wisconsin',
        city: 'Mequon',
        zipCodes: ['53092', '53097'],
        address: '11333 N Cedarburg Rd, Mequon, WI 53092',
        mapEmbed: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d47242.89071240654!2d-87.96560155317532!3d43.2142471194847!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8805398ca39ab521%3A0x7e6c0b8a6a8de95!2sMequon%2C%20WI!5e0!3m2!1sen!2sus!4v1692123456789!5m2!1sen!2sus'
    },
    {
        filename: 'germantown-wi.html',
        title: 'Ductless Mini Splits Germantown WI | Professional HVAC Installation & Service',
        description: 'Expert ductless mini split services in Germantown, WI. Professional installation, repair, maintenance. Energy-efficient solutions. Call (888) 918-9104.',
        h1: 'Ductless Mini Splits in Germantown, Wisconsin',
        city: 'Germantown',
        zipCodes: ['53022'],
        address: 'W156N11167 Pilgrim Rd, Germantown, WI 53022',
        mapEmbed: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d47242.89071240654!2d-88.10560155317532!3d43.2242471194847!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8805398ca39ab521%3A0x7e6c0b8a6a8de95!2sGermantown%2C%20WI!5e0!3m2!1sen!2sus!4v1692123456789!5m2!1sen!2sus'
    }
    // Add more locations as needed...
];

console.log('Service and location page data prepared for generation');
