// Ductless Mini Splits Cedarburg WI - Main JavaScript

document.addEventListener('DOMContentLoaded', function() {
    // Mobile menu functionality
    const mobileMenuToggle = document.querySelector('.mobile-menu-toggle');
    const navMenu = document.querySelector('.nav-menu');
    
    if (mobileMenuToggle) {
        mobileMenuToggle.addEventListener('click', function() {
            navMenu.classList.toggle('active');
            this.classList.toggle('active');
        });
    }

    // Smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach(anchor => {
        anchor.addEventListener('click', function (e) {
            e.preventDefault();
            const target = document.querySelector(this.getAttribute('href'));
            if (target) {
                target.scrollIntoView({
                    behavior: 'smooth',
                    block: 'start'
                });
            }
        });
    });

    // Intersection Observer for animations
    const observerOptions = {
        threshold: 0.1,
        rootMargin: '0px 0px -50px 0px'
    };

    const observer = new IntersectionObserver(function(entries) {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                entry.target.style.opacity = '1';
                entry.target.style.transform = 'translateY(0)';
            }
        });
    }, observerOptions);

    // Observe elements for animation
    document.querySelectorAll('.service-card, .feature-item, .location-card, .review-card').forEach(el => {
        el.style.opacity = '0';
        el.style.transform = 'translateY(30px)';
        el.style.transition = 'opacity 0.6s ease, transform 0.6s ease';
        observer.observe(el);
    });

    // Phone number click tracking
    document.querySelectorAll('a[href^="tel:"]').forEach(phoneLink => {
        phoneLink.addEventListener('click', function() {
            // Track phone clicks for analytics
            if (typeof gtag !== 'undefined') {
                gtag('event', 'click', {
                    'event_category': 'Phone',
                    'event_label': 'Phone Call CTA'
                });
            }
        });
    });

    // Form submission tracking
    const forms = document.querySelectorAll('form');
    forms.forEach(form => {
        form.addEventListener('submit', function() {
            if (typeof gtag !== 'undefined') {
                gtag('event', 'submit', {
                    'event_category': 'Form',
                    'event_label': 'Quote Request'
                });
            }
        });
    });

    // Floating phone CTA enhancement
    const floatingPhone = document.querySelector('.floating-phone');
    if (floatingPhone) {
        // Add click animation
        floatingPhone.addEventListener('click', function() {
            this.style.transform = 'scale(0.95)';
            setTimeout(() => {
                this.style.transform = 'scale(1)';
            }, 150);
        });

        // Hide on scroll up, show on scroll down
        let lastScrollTop = 0;
        window.addEventListener('scroll', function() {
            const scrollTop = window.pageYOffset || document.documentElement.scrollTop;
            
            if (scrollTop > lastScrollTop && scrollTop > 100) {
                // Scrolling down
                floatingPhone.style.transform = 'translateY(100px)';
            } else {
                // Scrolling up
                floatingPhone.style.transform = 'translateY(0)';
            }
            lastScrollTop = scrollTop;
        }, false);
    }

    // Lazy loading for images
    const images = document.querySelectorAll('img[data-src]');
    const imageObserver = new IntersectionObserver((entries, observer) => {
        entries.forEach(entry => {
            if (entry.isIntersecting) {
                const img = entry.target;
                img.src = img.dataset.src;
                img.classList.remove('lazy');
                imageObserver.unobserve(img);
            }
        });
    });

    images.forEach(img => imageObserver.observe(img));

    // Add loading states for external content
    const iframes = document.querySelectorAll('iframe');
    iframes.forEach(iframe => {
        iframe.addEventListener('load', function() {
            this.style.opacity = '1';
        });
        iframe.style.opacity = '0';
        iframe.style.transition = 'opacity 0.3s ease';
    });
});

// Utility functions
function scrollToTop() {
    window.scrollTo({
        top: 0,
        behavior: 'smooth'
    });
}

function trackCTAClick(ctaType) {
    if (typeof gtag !== 'undefined') {
        gtag('event', 'click', {
            'event_category': 'CTA',
            'event_label': ctaType
        });
    }
}

// Service area checker (for local SEO)
function checkServiceArea(zipCode) {
    const serviceZips = [
        '53012', '53024', '53092', '53097', '53035', '53209', '53217', '53223',
        '53225', '53209', '53211', '53212', '53213', '53216', '53218', '53219',
        '53233', '53234', '53235', '53237', '53238', '53259'
    ];
    return serviceZips.includes(zipCode);
}

// Emergency service modal (if needed)
function showEmergencyModal() {
    // This would show an emergency service modal
    alert('Call us now at (888) 918-9104 for 24/7 emergency service!');
}
