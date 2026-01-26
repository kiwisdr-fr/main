// ===== International (i18n) System =====
// Simple but powerful translation system for KiwiSDR.fr

const translations = {
    fr: {
        // Header & Nav
        nav_home: "Accueil",
        header_subtitle: "Outils Radio Avancés | Technologie SDR Mondiale",
        nav_services: "Services",
        nav_tools: "Outils",
        nav_resources: "Ressources",
        nav_contact: "Contact",
        
        // Welcome Section
        welcome_title: "Bienvenue sur KiwiSDR.fr",
        welcome_desc: "Découvrez la puissance de la technologie SDR avec nos outils innovants, calculatrices avancées et ressources mondiales pour les passionnés de radio.",
        
        // Services Section
        services_title: "Nos Services",
        services_map: "🌍 Carte Mondiale KiwiSDR.fr",
        services_map_desc: "Notre carte mondiale exceptionnelle ne se limite pas aux récepteurs KiwiSDR. Elle couvre aussi OpenWebRX, Web888, WebSDR, PhantomSDR et bien d'autres technologies de réception radio moderne.",
        services_products: "📦 Nos Produits & Plugins",
        services_products_desc: "Explorez notre catalogue complet de produits radio et plugins spécialisés, développés pour étendre les capacités de votre équipement SDR.",
        services_schedule: "📅 Planificateur de Stations",
        services_schedule_desc: "Notre planificateur innovant vous aide à organiser et suivre les transmissions programmées de différents types de stations radio expérimentales.",
        services_list: "📡 Répertoire des Récepteurs",
        services_list_desc: "Consultez notre répertoire complet de récepteurs SDR de tous types. Ouvert à tous les appareils utilisant le domaine kiwisdr.fr ou à ceux qui nous contactent directement.",
        
        // Tools Section
        tools_title: "Outils & Calculatrices",
        tools_modulator: "🎙️ Modulateur Analogique Avancé",
        tools_modulator_desc: "Générateur professionnel de tons et marqueurs. Créez des signaux réalistes et polyvalents avec notre système flexible et précis de modulation.",
        tools_antenna: "🛰️ Calculatrice d'Antennes",
        tools_antenna_whip: "Fouet Télescopique",
        tools_antenna_desc: "Calculez les longueurs de résonnance et les paramètres d'antennes courantes : dipôle, monopole, boucle, Yagi, antenne magnétique, V inversé, 5/8λ, etc.",
        tools_converter: "⚡ Convertisseur d'Unités & S-Mètres",
        tools_converter_desc: "Convertissez entre dBm, dBW, mW, W, dBµV, dBV, dBm/Hz. Estimez les S-unités avec conversion puissance ↔ tension (résistance variable).",
        tools_hackrf: "🔧 Calculatrice HackRF / Gain Amplificateur",
        tools_hackrf_desc: "Calculateur rapide pour estimer le gain de pilote/préamplificateur nécessaire entre un SDR (ex: HackRF) et un amplificateur de puissance (PA).",
        
        // Features Section
        features_title: "Pourquoi KiwiSDR.fr?",
        features_tech: "🚀 Technologie Avancée",
        features_tech_desc: "Interface moderne avec effets 3D et animations fluides pour une expérience utilisateur exceptionnelle.",
        features_global: "🌐 Ressources Mondiales",
        features_global_desc: "Accédez à la plus grande communauté de récepteurs radio mondiaux et partagez vos stations.",
        features_tools: "🔧 Outils Professionnels",
        features_tools_desc: "Des calculatrices précises et des modulateurs conçus pour les ingénieurs et passionnés de radio.",
        features_free: "💯 Gratuit & Indépendant",
        features_free_desc: "Totalement indépendant de KiwiSDR.com - Notre mission est de démocratiser l'accès aux technologies SDR.",
        
        // Footer
        footer_text: "Créé par",
        footer_studio: "Discode Studio",
        footer_heart: "avec ❤️ pour la communauté radio mondiale",
        footer_note: "🔗 Site indépendant - Aucun lien avec KiwiSDR.com",
        
        // Products Page
        products_title: "Nos Produits Disponibles",
        products_colormap: "🎨 Palettes de Couleurs SDR Console",
        products_colormap_desc: "Collection professionnelle de colormaps pour le spectrogramme en cascade (waterfall) de SDR Console. Ces palettes offrent des contrastes optimals et une lisibilité exceptionnelle pour vos sessions de réception.",
        products_included: "Palettes incluses :",
        products_download: "⬇️ Télécharger v1.0",
        products_coming: "📋 Prochainement",
        products_coming_desc: "D'autres produits et plugins radio innovants arriveront très bientôt. Restez connecté pour les dernières mises à jour!",
        
        // Schedule Page
        nav_schedule: "Horaires",
        nav_info: "Infos",
        schedule_title: "📡 Calendrier des Émissions",
        schedule_about: "ℹ️ À Propos du Planificateur",
        schedule_about_desc: "Ce planificateur affiche les émissions radio programmées de stations expérimentales et officielles du monde entier. Consultez les horaires UTC et planifiez vos sessions de réception!",
        schedule_utc: "⏱️ Heure UTC Actuelle",
        
        // SDR List Page
        nav_receivers: "Récepteurs",
        nav_map: "Carte",
        sdrlist_title: "📡 Répertoire Mondial des Récepteurs Radio",
        sdrlist_button_map: "🗺️ Accéder à la Carte",
        sdrlist_button_add: "➕ Ajouter un Récepteur",
        sdrlist_button_join: "✨ Joindre kiwisdr.fr",
        sdrlist_subtitle: "📡 Répertoire Mondial des Récepteurs Radio",
        sdrlist_type: "Type",
        sdrlist_location: "📍 Localisation",
        sdrlist_access: "🌐 Accès",
    },
    en: {
        // Header & Nav
        nav_home: "Home",
        header_subtitle: "Advanced Radio Tools | Worldwide SDR Technology",
        nav_services: "Services",
        nav_tools: "Tools",
        nav_resources: "Resources",
        nav_contact: "Contact",
        
        // Welcome Section
        welcome_title: "Welcome to KiwiSDR.fr",
        welcome_desc: "Discover the power of SDR technology with our innovative tools, advanced calculators and worldwide resources for radio enthusiasts.",
        
        // Services Section
        services_title: "Our Services",
        services_map: "🌍 Worldwide KiwiSDR.fr Map",
        services_map_desc: "Our exceptional worldwide map is not limited to KiwiSDR receivers. It also covers OpenWebRX, Web888, WebSDR, PhantomSDR and many other modern radio reception technologies.",
        services_products: "📦 Our Products & Plugins",
        services_products_desc: "Explore our complete catalog of specialized radio products and plugins, designed to extend the capabilities of your SDR equipment.",
        services_schedule: "📅 Station Scheduler",
        services_schedule_desc: "Our innovative scheduler helps you organize and track scheduled transmissions from various types of experimental radio stations.",
        services_list: "📡 Receiver Directory",
        services_list_desc: "Consult our comprehensive directory of SDR receivers of all types. Open to all devices using the kiwisdr.fr domain or those who contact us directly.",
        
        // Tools Section
        tools_title: "Tools & Calculators",
        tools_modulator: "🎙️ Advanced Analog Modulator",
        tools_modulator_desc: "Professional tone and marker generator. Create realistic and versatile signals with our flexible and precise modulation system.",
        tools_antenna: "🛰️ Antenna Calculator",
        tools_antenna_whip: "Whip Calculator",
        tools_antenna_desc: "Calculate resonant lengths and parameters for common antennas: dipole, monopole, loop, Yagi, magnetic loop, inverted-V, 5/8λ, etc.",
        tools_converter: "⚡ Unit Converter & S-Meters",
        tools_converter_desc: "Convert between dBm, dBW, mW, W, dBµV, dBV, dBm/Hz. Estimate S-units with power ↔ voltage conversion (variable resistance).",
        tools_hackrf: "🔧 HackRF Driver / Gain Calculator",
        tools_hackrf_desc: "Quick calculator for estimating required driver/preamp gain between an SDR (e.g. HackRF) and a power amplifier (PA).",
        
        // Features Section
        features_title: "Why KiwiSDR.fr?",
        features_tech: "🚀 Advanced Technology",
        features_tech_desc: "Modern interface with 3D effects and smooth animations for an exceptional user experience.",
        features_global: "🌐 Worldwide Resources",
        features_global_desc: "Access the largest community of worldwide radio receivers and share your stations.",
        features_tools: "🔧 Professional Tools",
        features_tools_desc: "Precise calculators and modulators designed for engineers and radio enthusiasts.",
        features_free: "💯 Free & Independent",
        features_free_desc: "Completely independent from KiwiSDR.com - Our mission is to democratize access to SDR technologies.",
        
        // Footer
        footer_text: "Made by",
        footer_studio: "Discode Studio",
        footer_heart: "with ❤️ for the worldwide radio community",
        footer_note: "🔗 Independent website - No relation to KiwiSDR.com",
        
        // Products Page
        products_title: "Our Available Products",
        products_colormap: "🎨 SDR Console Color Palettes",
        products_colormap_desc: "Professional collection of colormaps for the SDR Console waterfall spectrogram. These palettes offer optimal contrast and exceptional readability for your reception sessions.",
        products_included: "Included palettes:",
        products_download: "⬇️ Download v1.0",
        products_coming: "📋 Coming Soon",
        products_coming_desc: "Other innovative radio products and plugins will be available very soon. Stay tuned for the latest updates!",
        
        // Schedule Page
        nav_schedule: "Schedule",
        nav_info: "Info",
        schedule_title: "📡 Broadcast Calendar",
        schedule_about: "ℹ️ About the Scheduler",
        schedule_about_desc: "This scheduler displays scheduled broadcasts from experimental and official radio stations around the world. Check UTC schedules and plan your reception sessions!",
        schedule_utc: "⏱️ Current UTC Time",
        
        // SDR List Page
        nav_receivers: "Receivers",
        nav_map: "Map",
        sdrlist_title: "📡 Worldwide Radio Receiver Directory",
        sdrlist_button_map: "🗺️ Access Map",
        sdrlist_button_add: "➕ Add Receiver",
        sdrlist_button_join: "✨ Join kiwisdr.fr",
        sdrlist_subtitle: "📡 Worldwide Radio Receiver Directory",
        sdrlist_type: "Type",
        sdrlist_location: "📍 Location",
        sdrlist_access: "🌐 Access",
    }
};

// Get current language from localStorage or browser
function getCurrentLanguage() {
    let lang = localStorage.getItem('kiwisdr_lang');
    if (!lang) {
        const browserLang = navigator.language.split('-')[0];
        lang = (browserLang === 'fr') ? 'fr' : 'en';
        localStorage.setItem('kiwisdr_lang', lang);
    }
    return lang;
}

// Get translation text
function t(key) {
    const lang = getCurrentLanguage();
    return translations[lang][key] || translations.en[key] || key;
}

// Set language
function setLanguage(lang) {
    if (lang === 'fr' || lang === 'en') {
        localStorage.setItem('kiwisdr_lang', lang);
        location.reload(); // Reload page with new language
    }
}

// Get language selector button state
function getLanguageButtonClass(lang) {
    return getCurrentLanguage() === lang ? 'sel' : '';
}

// Export for modules
if (typeof module !== 'undefined' && module.exports) {
    module.exports = { t, setLanguage, getCurrentLanguage, getLanguageButtonClass };
}
