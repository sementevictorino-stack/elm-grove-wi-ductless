// Mobile Menu Toggle
document.addEventListener('DOMContentLoaded', function() {
    const mobileMenu = document.querySelector('.mobile-menu');
    const navLinks = document.querySelector('.nav-links');
    
    if (mobileMenu) {
        mobileMenu.addEventListener('click', function() {
            navLinks.classList.toggle('active');
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
    
    // Header scroll effect
    window.addEventListener('scroll', function() {
        const header = document.querySelector('header');
        if (window.scrollY > 100) {
            header.style.backgroundColor = 'rgba(26, 0, 51, 0.95)';
        } else {
            header.style.backgroundColor = 'rgba(26, 0, 51, 1)';
        }
    });
    
    // Animate elements on scroll
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
    
    // Observe service cards and other elements
    document.querySelectorAll('.service-card, .trust-item, .location-card').forEach(el => {
        el.style.opacity = '0';
        el.style.transform = 'translateY(20px)';
        el.style.transition = 'all 0.6s ease';
        observer.observe(el);
    });
    
    // Phone number click tracking
    document.querySelectorAll('a[href^="tel:"]').forEach(phoneLink => {
        phoneLink.addEventListener('click', function() {
            if (typeof gtag !== 'undefined') {
                gtag('event', 'phone_call', {
                    event_category: 'contact',
                    event_label: 'phone_click'
                });
            }
        });
    });
    
    // Form submission tracking
    document.querySelectorAll('form').forEach(form => {
        form.addEventListener('submit', function() {
            if (typeof gtag !== 'undefined') {
                gtag('event', 'form_submit', {
                    event_category: 'contact',
                    event_label: 'quote_request'
                });
            }
        });
    });
});

// Emergency service highlight
function highlightEmergencyService() {
    const emergencyElements = document.querySelectorAll('.emergency-highlight');
    emergencyElements.forEach(el => {
        el.style.animation = 'pulse 2s infinite';
    });
}

// Call highlighting function after DOM loads
document.addEventListener('DOMContentLoaded', highlightEmergencyService);
