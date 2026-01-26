# 🌐 Guide de la Version Bilingue / Bilingual Version Guide

## 📱 Utilisation du Site / Using the Site

### 🇫🇷 Français

**Comment changer la langue ?**
1. En haut de la page, cliquez sur le bouton **"🇬🇧 EN"** pour passer à l'anglais
2. Le site se rechargera automatiquement en anglais
3. Votre choix de langue est sauvegardé dans votre navigateur (localStorage)
4. La prochaine fois que vous visiterez le site, il s'affichera dans la même langue

**Langues disponibles:**
- 🇫🇷 FR (Français) - Langue par défaut
- 🇬🇧 EN (Anglais) - English version

---

### 🇬🇧 English

**How to change the language?**
1. At the top of the page, click the **"🇫🇷 FR"** button to switch to French
2. The site will automatically reload in French
3. Your language choice is saved in your browser (localStorage)
4. Next time you visit the site, it will display in the same language

**Available languages:**
- 🇫🇷 FR (French) - Default language
- 🇬🇧 EN (English) - Current version

---

## ⚙️ Système Technique / Technical System

### Architecture

```
assets/
├── js/
│   └── i18n.js                 # Translation engine (122 lines)
├── css/
│   └── main.css                # Styling with language selector
index.html                       # Main page with translation hooks
```

### Features

#### 1. **Translation System** (`i18n.js`)
- 50+ translation keys covering all page content
- Two language support: French (FR) & English (EN)
- Automatic browser language detection
- localStorage persistence for user preferences

#### 2. **Language Selector**
- Located in the header above the navigation
- Two buttons: 🇫🇷 FR | 🇬🇧 EN
- Active button is highlighted with cyan glow
- Clicking a button switches language immediately

#### 3. **Translation Keys**
Complete coverage for:
- Navigation menu items
- Section headings
- Service descriptions
- Tools and calculators
- Features and benefits
- Footer information

---

## 📝 Translation Keys Reference

### Header & Navigation
| Key | French | English |
|-----|--------|---------|
| `header_subtitle` | "Outils Radio Avancés \| Technologie SDR Mondiale" | "Advanced Radio Tools \| Worldwide SDR Technology" |
| `nav_services` | "Services" | "Services" |
| `nav_tools` | "Outils" | "Tools" |
| `nav_resources` | "Ressources" | "Resources" |
| `nav_contact` | "Contact" | "Contact" |

### Welcome Section
| Key | French | English |
|-----|--------|---------|
| `welcome_title` | "Bienvenue sur KiwiSDR.fr" | "Welcome to KiwiSDR.fr" |
| `welcome_desc` | Découvrez la puissance... | "Discover the power..." |

### Services
| Key | French | English |
|-----|--------|---------|
| `services_title` | "Nos Services" | "Our Services" |
| `services_map` | "🌍 Carte Mondiale KiwiSDR.fr" | "🌍 Worldwide KiwiSDR.fr Map" |
| `services_products` | "📦 Nos Produits & Plugins" | "📦 Our Products & Plugins" |
| `services_schedule` | "📅 Planificateur de Stations" | "📅 Station Scheduler" |
| `services_list` | "📡 Répertoire des Récepteurs" | "📡 Receiver Directory" |

### Tools
| Key | French | English |
|-----|--------|---------|
| `tools_title` | "Outils & Calculatrices" | "Tools & Calculators" |
| `tools_modulator` | "🎙️ Modulateur Analogique Avancé" | "🎙️ Advanced Analog Modulator" |
| `tools_antenna` | "🛰️ Calculatrice d'Antennes" | "🛰️ Antenna Calculator" |
| `tools_converter` | "⚡ Convertisseur d'Unités & S-Mètres" | "⚡ Unit Converter & S-Meters" |
| `tools_hackrf` | "🔧 Calculatrice HackRF / Gain Amplificateur" | "🔧 HackRF Driver / Gain Calculator" |

### Features
| Key | French | English |
|-----|--------|---------|
| `features_title` | "Pourquoi KiwiSDR.fr?" | "Why KiwiSDR.fr?" |
| `features_tech` | "🚀 Technologie Avancée" | "🚀 Advanced Technology" |
| `features_global` | "🌐 Ressources Mondiales" | "🌐 Worldwide Resources" |
| `features_tools` | "🔧 Outils Professionnels" | "🔧 Professional Tools" |
| `features_free` | "💯 Gratuit & Indépendant" | "💯 Free & Independent" |

### Footer
| Key | French | English |
|-----|--------|---------|
| `footer_text` | "Créé par" | "Made by" |
| `footer_studio` | "Discode Studio" | "Discode Studio" |
| `footer_heart` | "avec ❤️ pour la communauté radio mondiale" | "with ❤️ for the worldwide radio community" |
| `footer_note` | "🔗 Site indépendant - Aucun lien avec KiwiSDR.com" | "🔗 Independent website - No relation to KiwiSDR.com" |

---

## 🔧 Adding More Translations

### To add a new translation key:

1. **Open `assets/js/i18n.js`**
2. **Add to the `fr` object:**
   ```javascript
   my_new_key: "Texte français ici",
   ```
3. **Add to the `en` object:**
   ```javascript
   my_new_key: "English text here",
   ```

### To use the translation in HTML:

1. **Add an `id` attribute to the element:**
   ```html
   <h2 id="my-new-heading">Default text</h2>
   ```

2. **Update the `updateTranslations()` function:**
   ```javascript
   document.getElementById('my-new-heading').textContent = t('my_new_key');
   ```

3. **Example:**
   ```javascript
   // In i18n.js
   my_custom_title: "Mon Titre Personnalisé",  // French
   my_custom_title: "My Custom Title",         // English
   
   // In HTML
   <h2 id="my-custom-title">Default</h2>
   
   // In updateTranslations()
   document.getElementById('my-custom-title').textContent = t('my_custom_title');
   ```

---

## 🎨 Styling the Language Selector

The language selector buttons are styled with:
- **Default**: Cyan border with semi-transparent gradient background
- **Hover**: Increased glow and slight lift animation
- **Active (sel class)**: Solid cyan gradient with stronger shadow

CSS Classes:
- `.language-selector` - Container div with flexbox layout
- `.lang-btn` - Individual button styling
- `.lang-btn.sel` - Active button state

---

## 🐛 Troubleshooting

### Site still shows French after clicking EN button?
- Clear your browser cache and localStorage
- Try a different browser
- Check that JavaScript is enabled

### Translation key showing as the key itself?
- Verify the key exists in both `fr` and `en` objects in `i18n.js`
- Check for typos in the key name
- Ensure the HTML `id` attribute matches the function call

### Language selector buttons not visible?
- Check that `assets/js/i18n.js` is properly linked
- Verify CSS file (`assets/css/main.css`) is loaded
- Open browser console (F12) for any JavaScript errors

---

## 📊 Statistics

- **Total Translation Keys**: 50+
- **Languages Supported**: 2 (FR, EN)
- **Characters in French**: ~2,500+
- **Characters in English**: ~2,500+
- **Coverage**: 100% of main page content
- **File Size**: i18n.js ~5KB (minified)

---

## 🚀 Future Enhancements

Potential additions for the bilingual system:
- [ ] Add more languages (ES, DE, IT, etc.)
- [ ] Translate sub-pages (products, schedule, SDR list)
- [ ] Add language switcher to all pages
- [ ] Implement keyboard shortcuts for language switching (Ctrl+F for FR, Ctrl+E for EN)
- [ ] Add language preference selector in settings
- [ ] Implement lazy translation loading for better performance
- [ ] Create translation management dashboard

---

## 📞 Support

For issues or suggestions regarding the bilingual system, please contact Discode Studio.

---

**Last Updated**: 2025
**Version**: 1.0
**Status**: Active & Maintained
