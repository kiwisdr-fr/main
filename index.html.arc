<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title>KiwiSDR.fr - Radio Tools</title>

    <!-- Open Graph Metadata -->
    <meta property="og:title" content="KiwiSDR.fr | Worldwide Radio Tools" />
    <meta property="og:description" content="KiwiSDR.fr - Advanced radio tools and worldwide SDR technology." />
    <meta property="og:type" content="website" />
    <meta property="og:url" content="http://kiwisdr.fr" />
    <meta property="og:image" content="http://kiwisdr.fr/assets/img/og-image.png" />

    <!-- Ad Script -->
    <script id="aclib" type="text/javascript" src="//acscdn.com/script/aclib.js"></script>
    <script type="text/javascript">
    aclib.runAutoTag({
        zoneId: 'ntsld2zobi',
    });
    </script>

    <!-- Favicon & Styles -->
    <link rel="icon" type="image/x-icon" href="./assets/img/favicon.ico" />
    <link rel="stylesheet" href="./assets/css/main.css" />
    
    <!-- i18n System -->
    <script src="./assets/js/i18n.js"></script>
    
    <style>
        .language-selector {
            display: flex;
            gap: 0.5em;
            justify-content: center;
            margin-top: 1em;
        }
        
        .lang-btn {
            background: linear-gradient(135deg, rgba(0, 200, 255, 0.15) 0%, rgba(100, 50, 200, 0.1) 100%);
            border: 2px solid rgba(0, 255, 200, 0.2);
            color: #00ffcc;
            padding: 0.5em 1em;
            border-radius: 8px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s ease;
            font-size: 0.9em;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        
        .lang-btn:hover {
            border-color: rgba(0, 255, 200, 0.5);
            box-shadow: 0 4px 15px rgba(0, 200, 255, 0.2);
            transform: translateY(-2px);
        }
        
        .lang-btn.sel {
            background: linear-gradient(135deg, #00ffcc 0%, #00ddff 100%);
            border-color: #00ffcc;
            color: #0a0e27;
            box-shadow: 0 8px 25px rgba(0, 255, 204, 0.4);
            font-weight: 700;
        }
    </style>
</head>

<body>
    <!-- Header -->
    <header>
        <div class="header-logo">
            <img 
                src="./assets/img/og-image.png" 
                alt="KiwiSDR Logo" 
                class="logo"
            />
        </div>

        <div class="header-text">
            <h1>KiwiSDR.fr</h1>
            <p id="header-subtitle">Outils Radio Avancés | Technologie SDR Mondiale</p>
            
            <!-- Language Selector -->
            <div class="language-selector">
                <button class="lang-btn sel" onclick="setLanguage('fr')">🇫🇷 FR</button>
                <button class="lang-btn" onclick="setLanguage('en')">🇬🇧 EN</button>
            </div>
        </div>
    </header>

    <!-- Navigation -->
    <nav>
        <a href="#services" id="nav-services">Services</a>
        <a href="#outils" id="nav-tools">Outils</a>
        <a href="#ressources" id="nav-resources">Ressources</a>
        <a href="#contact" id="nav-contact">Contact</a>
    </nav>

    <!-- Main Content -->
    <main class="main-content">
        <!-- Introduction Section -->
        <section id="intro">
            <h2 id="welcome-title">Bienvenue sur KiwiSDR.fr</h2>
            <div class="radio-waves">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
            <p style="text-align: center; font-size: 1.1em; color: #a8d8ff;" id="welcome-desc">
                Découvrez la puissance de la technologie SDR avec nos outils innovants, 
                calculatrices avancées et ressources mondiales pour les passionnés de radio.
            </p>
            <div class="radio-dial"></div>
        </section>

        <!-- Services Section -->
        <section id="services">
            <h2 id="services-title">Nos Services</h2>
            <ul class="section-list">
                <li>
                    <a href="http://map.kiwisdr.fr/" id="services-map">🌍 Carte Mondiale KiwiSDR.fr</a>
                    <p id="services-map-desc">
                        Notre carte mondiale exceptionnelle ne se limite pas aux récepteurs KiwiSDR. 
                        Elle couvre aussi OpenWebRX, Web888, WebSDR, PhantomSDR et bien d'autres 
                        technologies de réception radio moderne.
                    </p>
                </li>

                <li>
                    <a href="./radio/products/index.html" id="services-products">📦 Nos Produits & Plugins</a>
                    <p id="services-products-desc">
                        Explorez notre catalogue complet de produits radio et plugins spécialisés, 
                        développés pour étendre les capacités de votre équipement SDR.
                    </p>
                </li>

                <li>
                    <a href="./radio/schedule/index.html" id="services-schedule">📅 Planificateur de Stations</a>
                    <p id="services-schedule-desc">
                        Notre planificateur innovant vous aide à organiser et suivre les transmissions 
                        programmées de différents types de stations radio expérimentales.
                    </p>
                </li>

                <li>
                    <a href="radio/sdrlist/index.html" id="services-list">📡 Répertoire des Récepteurs</a>
                    <p id="services-list-desc">
                        Consultez notre répertoire complet de récepteurs SDR de tous types. 
                        Ouvert à tous les appareils utilisant le domaine kiwisdr.fr 
                        ou à ceux qui nous contactent directement.
                    </p>
                </li>
            </ul>
        </section>

        <!-- Tools Section -->
        <section id="outils">
            <h2 id="tools-title">Outils & Calculatrices</h2>
            <ul class="section-list">
                <li>
                    <a href="./radio/module/analog-modulator/index.html" id="tools-modulator">🎙️ Modulateur Analogique Avancé</a>
                    <p id="tools-modulator-desc">
                        Générateur professionnel de tons et marqueurs. Créez des signaux réalistes 
                        et polyvalents avec notre système flexible et précis de modulation.
                    </p>
                </li>

                <li>
                    <a href="/radio/module/antenna/antennacalc.html" id="tools-antenna">🛰️ Calculatrice d'Antennes</a> 
                    <span style="color: #00ffcc;">|</span> 
                    <a href="./radio/module/antenna/whipclc.html" id="tools-antenna-whip">Fouet Télescopique</a>
                    <p id="tools-antenna-desc">
                        Calculez les longueurs de résonnance et les paramètres d'antennes courantes : 
                        dipôle, monopole, boucle, Yagi, antenne magnétique, V inversé, 5/8λ, etc.
                    </p>
                </li>

                <li>
                    <a href="./radio/module/rf/dbmconverter.html" id="tools-converter">⚡ Convertisseur d'Unités & S-Mètres</a>
                    <p id="tools-converter-desc">
                        Convertissez entre dBm, dBW, mW, W, dBµV, dBV, dBm/Hz. 
                        Estimez les S-unités avec conversion puissance ↔ tension (résistance variable).
                    </p>
                </li>

                <li>
                    <a href="./radio/module/rf/hrfgaincalc.html" id="tools-hackrf">🔧 Calculatrice HackRF / Gain Amplificateur</a>
                    <p id="tools-hackrf-desc">
                        Calculateur rapide pour estimer le gain de pilote/préamplificateur 
                        nécessaire entre un SDR (ex: HackRF) et un amplificateur de puissance (PA).
                    </p>
                </li>
            </ul>
        </section>

        <!-- Features Section -->
        <section id="ressources">
            <h2 id="features-title">Pourquoi KiwiSDR.fr?</h2>
            <ul class="section-list">
                <li>
                    <strong style="color: #00ffcc;" id="features-tech">🚀 Technologie Avancée</strong>
                    <p id="features-tech-desc">
                        Interface moderne avec effets 3D et animations fluides pour une 
                        expérience utilisateur exceptionnelle.
                    </p>
                </li>

                <li>
                    <strong style="color: #00ffcc;" id="features-global">🌐 Ressources Mondiales</strong>
                    <p id="features-global-desc">
                        Accédez à la plus grande communauté de récepteurs radio mondiaux 
                        et partagez vos stations.
                    </p>
                </li>

                <li>
                    <strong style="color: #00ffcc;" id="features-tools">🔧 Outils Professionnels</strong>
                    <p id="features-tools-desc">
                        Des calculatrices précises et des modulateurs conçus pour 
                        les ingénieurs et passionnés de radio.
                    </p>
                </li>

                <li>
                    <strong style="color: #00ffcc;" id="features-free">💯 Gratuit & Indépendant</strong>
                    <p id="features-free-desc">
                        Totalement indépendant de KiwiSDR.com - Notre mission est de 
                        démocratiser l'accès aux technologies SDR.
                    </p>
                </li>
            </ul>
        </section>
    </main>

    <!-- Footer -->
    <footer>
        <p>
            <span id="footer-text">Créé par</span> <strong id="footer-studio">Discode Studio</strong> <span id="footer-heart">avec ❤️ pour la communauté radio mondiale</span><br />
            <em id="footer-note">🔗 Site indépendant - Aucun lien avec KiwiSDR.com</em>
        </p>
    </footer>

    <!-- Translation Script -->
    <script>
        function updateTranslations() {
            // Update all text elements
            document.getElementById('header-subtitle').textContent = t('header_subtitle');
            document.getElementById('nav-services').textContent = t('nav_services');
            document.getElementById('nav-tools').textContent = t('nav_tools');
            document.getElementById('nav-resources').textContent = t('nav_resources');
            document.getElementById('nav-contact').textContent = t('nav_contact');
            
            document.getElementById('welcome-title').textContent = t('welcome_title');
            document.getElementById('welcome-desc').textContent = t('welcome_desc');
            
            document.getElementById('services-title').textContent = t('services_title');
            document.getElementById('services-map').textContent = t('services_map');
            document.getElementById('services-map-desc').textContent = t('services_map_desc');
            document.getElementById('services-products').textContent = t('services_products');
            document.getElementById('services-products-desc').textContent = t('services_products_desc');
            document.getElementById('services-schedule').textContent = t('services_schedule');
            document.getElementById('services-schedule-desc').textContent = t('services_schedule_desc');
            document.getElementById('services-list').textContent = t('services_list');
            document.getElementById('services-list-desc').textContent = t('services_list_desc');
            
            document.getElementById('tools-title').textContent = t('tools_title');
            document.getElementById('tools-modulator').textContent = t('tools_modulator');
            document.getElementById('tools-modulator-desc').textContent = t('tools_modulator_desc');
            document.getElementById('tools-antenna').textContent = t('tools_antenna');
            document.getElementById('tools-antenna-whip').textContent = t('tools_antenna_whip');
            document.getElementById('tools-antenna-desc').textContent = t('tools_antenna_desc');
            document.getElementById('tools-converter').textContent = t('tools_converter');
            document.getElementById('tools-converter-desc').textContent = t('tools_converter_desc');
            document.getElementById('tools-hackrf').textContent = t('tools_hackrf');
            document.getElementById('tools-hackrf-desc').textContent = t('tools_hackrf_desc');
            
            document.getElementById('features-title').textContent = t('features_title');
            document.getElementById('features-tech').textContent = t('features_tech');
            document.getElementById('features-tech-desc').textContent = t('features_tech_desc');
            document.getElementById('features-global').textContent = t('features_global');
            document.getElementById('features-global-desc').textContent = t('features_global_desc');
            document.getElementById('features-tools').textContent = t('features_tools');
            document.getElementById('features-tools-desc').textContent = t('features_tools_desc');
            document.getElementById('features-free').textContent = t('features_free');
            document.getElementById('features-free-desc').textContent = t('features_free_desc');
            
            document.getElementById('footer-text').textContent = t('footer_text');
            document.getElementById('footer-studio').textContent = t('footer_studio');
            document.getElementById('footer-heart').textContent = t('footer_heart');
            document.getElementById('footer-note').textContent = t('footer_note');
            
            // Update language button states
            document.querySelectorAll('.lang-btn').forEach(btn => {
                btn.classList.remove('sel');
            });
            if (getCurrentLanguage() === 'fr') {
                document.querySelectorAll('.lang-btn')[0].classList.add('sel');
            } else {
                document.querySelectorAll('.lang-btn')[1].classList.add('sel');
            }
        }
        
        // Update on page load
        document.addEventListener('DOMContentLoaded', updateTranslations);
    </script>
</body>
</html>



