# Malik-mohsin-ali<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Visual Storyteller - Photography Portfolio</title>
    <!-- Load Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Use Inter font and set a smooth transition for interactive elements */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #0f172a; /* Dark background color (slate-900) */
            color: #f1f5f9; /* Light text color (slate-100) */
        }
        .portfolio-grid img {
            transition: transform 0.3s ease-in-out, box-shadow 0.3s ease-in-out;
            cursor: pointer;
        }
        .portfolio-grid img:hover {
            transform: scale(1.03);
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.5), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
        }
        /* Custom scrollbar for a dark theme */
        ::-webkit-scrollbar {
            width: 8px;
        }
        ::-webkit-scrollbar-track {
            background: #1e293b; /* Slate-800 */
        }
        ::-webkit-scrollbar-thumb {
            background: #475569; /* Slate-600 */
            border-radius: 4px;
        }
    </style>
</head>
<body class="antialiased">

    <!-- Header & Navigation -->
    <header class="sticky top-0 z-10 bg-slate-900/95 backdrop-blur-md shadow-lg border-b border-slate-700/50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-4 flex justify-between items-center">
            <!-- Logo/Site Title -->
            <h1 class="text-2xl font-extrabold text-sky-400">
                Visual Storyteller
            </h1>
            <!-- Desktop Navigation -->
            <nav class="hidden md:flex space-x-6">
                <a href="#home" class="text-slate-200 hover:text-sky-400 transition duration-200 p-2 rounded-lg">Home</a>
                <a href="#portfolio" class="text-slate-200 hover:text-sky-400 transition duration-200 p-2 rounded-lg">Portfolio</a>
                <a href="#about" class="text-slate-200 hover:text-sky-400 transition duration-200 p-2 rounded-lg">About</a>
                <a href="#contact" class="text-slate-200 hover:text-sky-400 transition duration-200 p-2 rounded-lg">Contact</a>
            </nav>
            <!-- Mobile Menu Placeholder (Not implemented for brevity, but a good feature to add!) -->
            <button class="md:hidden text-slate-200 hover:text-sky-400 focus:outline-none">
                <svg xmlns="http://www.w3.org/2000/svg" class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7" />
                </svg>
            </button>
        </div>
    </header>

    <main class="max-w-7xl mx-auto">
        
        <!-- Hero Section -->
        <section id="home" class="relative overflow-hidden pt-12 pb-16 md:pt-24 md:pb-32">
            <div class="px-4 sm:px-6 lg:px-8">
                <div class="relative z-10 text-center">
                    <h2 class="text-5xl md:text-7xl font-bold mb-4 bg-clip-text text-transparent bg-gradient-to-r from-sky-400 to-indigo-500">
                        Framing the Unseen
                    </h2>
                    <p class="text-xl md:text-2xl text-slate-300 max-w-2xl mx-auto mb-10">
                        Capturing genuine emotion and fleeting moments through the lens.
                    </p>
                    <a href="#portfolio" class="inline-block px-8 py-3 text-lg font-semibold text-white bg-sky-600 rounded-full shadow-lg hover:bg-sky-500 transition duration-300 transform hover:scale-105">
                        View Gallery
                    </a>
                </div>
                <!-- Subtle background visual element (can be replaced by a signature shot) -->
                <div class="mt-16 rounded-xl overflow-hidden shadow-2xl ring-4 ring-sky-500/30">
                    <img src="https://placehold.co/1200x500/1e293b/e2e8f0?text=Your+Signature+Shot+Here" 
                         alt="Signature placeholder image" 
                         class="w-full h-auto object-cover" 
                         onerror="this.onerror=null;this.src='https://placehold.co/1200x500/1e293b/e2e8f0?text=Loading+Image...';"
                    >
                </div>
            </div>
        </section>

        <!-- Portfolio Gallery Section -->
        <section id="portfolio" class="py-16 md:py-24 px-4 sm:px-6 lg:px-8">
            <h3 class="text-4xl font-bold text-center mb-12 text-sky-400">Recent Works</h3>
            
            <!-- Gallery Grid Container -->
            <div id="gallery-container" class="portfolio-grid grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4 md:gap-6">
                <!-- Images will be injected here by JavaScript -->
            </div>
        </section>

        <!-- About Section -->
        <section id="about" class="py-16 md:py-24 px-4 sm:px-6 lg:px-8 bg-slate-800/50 rounded-xl shadow-xl mx-4 sm:mx-6 lg:mx-8 mb-16">
            <h3 class="text-4xl font-bold text-center mb-8 text-sky-400">About Me</h3>
            <div class="max-w-3xl mx-auto text-lg space-y-4 text-slate-300">
                <p>
                    My name is Alex and I specialize in capturing **documentary and lifestyle photography**. For the past decade, I've traveled across three continents, focusing on the intersection of human experience and the natural world. My work is driven by a deep curiosity about people's stories and the desire to present them with authenticity.
                </p>
                <p>
                    I believe that the best photograph isn't just a picture; it's a conversation starter. Whether I'm shooting a fast-paced street scene or a quiet portrait, my goal is always to evoke emotion and provide a unique perspective. Let's create something meaningful together.
                </p>
                <div class="flex justify-center mt-8">
                    <img src="https://placehold.co/150x150/0f172a/60a5fa?text=A+P" 
                         alt="Profile Placeholder" 
                         class="rounded-full w-36 h-36 object-cover border-4 border-sky-500 shadow-xl"
                         onerror="this.onerror=null;this.src='https://placehold.co/150x150/0f172a/60a5fa?text=Profile';"
                    >
                </div>
            </div>
        </section>

        <!-- Contact Section -->
        <section id="contact" class="py-16 md:py-24 px-4 sm:px-6 lg:px-8">
            <h3 class="text-4xl font-bold text-center mb-8 text-sky-400">Get in Touch</h3>
            <div class="max-w-xl mx-auto">
                <p class="text-center text-lg text-slate-300 mb-8">
                    Ready to discuss your next project? Send me a message!
                </p>
                <form action="#" method="POST" class="space-y-6 bg-slate-800 p-8 rounded-xl shadow-2xl border border-slate-700">
                    <div>
                        <label for="name" class="block text-sm font-medium text-slate-300 mb-1">Name</label>
                        <input type="text" id="name" name="name" class="w-full px-4 py-2 bg-slate-900 border border-slate-600 rounded-lg text-white focus:ring-sky-500 focus:border-sky-500 transition duration-150">
                    </div>
                    <div>
                        <label for="email" class="block text-sm font-medium text-slate-300 mb-1">Email</label>
                        <input type="email" id="email" name="email" class="w-full px-4 py-2 bg-slate-900 border border-slate-600 rounded-lg text-white focus:ring-sky-500 focus:border-sky-500 transition duration-150">
                    </div>
                    <div>
                        <label for="message" class="block text-sm font-medium text-slate-300 mb-1">Message</label>
                        <textarea id="message" name="message" rows="4" class="w-full px-4 py-2 bg-slate-900 border border-slate-600 rounded-lg text-white focus:ring-sky-500 focus:border-sky-500 transition duration-150"></textarea>
                    </div>
                    <div class="flex justify-center">
                        <button type="submit" class="w-full md:w-auto px-6 py-3 text-lg font-semibold text-white bg-sky-600 rounded-lg shadow-md hover:bg-sky-500 transition duration-300 transform hover:scale-[1.02]">
                            Send Message
                        </button>
                    </div>
                </form>
            </div>
        </section>

    </main>

    <!-- Footer -->
    <footer class="mt-20 py-8 bg-slate-900 border-t border-slate-700/50">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center text-slate-400">
            <p>&copy; 2025 Visual Storyteller. All rights reserved.</p>
            <div class="flex justify-center space-x-6 mt-4">
                <!-- Social Media Icons (using placeholders for simple SVG) -->
                <a href="#" class="text-slate-400 hover:text-sky-400 transition duration-200">
                    <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24"><path d="M12 2C6.477 2 2 6.484 2 12.017v5.396l-.999 1.125l.999 4.392h5.715v-5.601h-2.348v-2.813h2.348v-2.008c0-2.327 1.423-3.593 3.5-3.593 1.007 0 1.879.074 2.138.108v2.463l-1.442.006c-1.129 0-1.35.534-1.35 1.321v1.739h3.805l-.504 3.095h-3.301v5.601h6.602c3.551 0 6.448-2.887 6.448-6.425 0-5.538-4.477-10.021-10-10.021z"></path></svg>
                </a>
                <a href="#" class="text-slate-400 hover:text-sky-400 transition duration-200">
                    <svg class="w-6 h-6" fill="currentColor" viewBox="0 0 24 24"><path d="M7 6.477c0-.285.23-.497.514-.497h8.972c.284 0 .514.212.514.497v11.047c0 .285-.23.497-.514.497h-8.972c-.284 0-.514-.212-.514-.497v-11.047zm7.986 1.488c0 .285-.23.497-.514.497h-4.972c-.284 0-.514-.212-.514-.497v-1.047c0-.285.23-.497.514-.497h4.972c.284 0 .514.212.514.497v1.047zm-1.896 6.324c.002 1.15-.935 2.083-2.085 2.083-1.152 0-2.085-.933-2.085-2.083 0-1.151.933-2.083 2.085-2.083 1.15 0 2.083.932 2.085 2.083zm4.076-2.046c0 3.033-2.46 5.5-5.5 5.5s-5.5-2.467-5.5-5.5c0-3.034 2.46-5.5 5.5-5.5s5.5 2.466 5.5 5.5z"></path></svg>
                </a>
            </div>
        </div>
    </footer>

    <!-- Full-Screen Modal/Lightbox -->
    <div id="lightbox-modal" class="fixed inset-0 z-50 bg-black/95 flex items-center justify-center hidden" onclick="closeLightbox()">
        <div class="relative max-w-5xl max-h-screen p-4" onclick="event.stopPropagation()">
            <img id="lightbox-img" src="" alt="Full-screen photo" class="max-w-full max-h-[90vh] object-contain rounded-lg shadow-2xl transition duration-300">
            <button class="absolute top-4 right-4 text-white text-4xl font-light p-2 rounded-full bg-black/50 hover:bg-black/80 transition duration-200" onclick="closeLightbox()">
                &times;
            </button>
            <p id="lightbox-caption" class="text-center text-slate-300 mt-4 text-lg"></p>
        </div>
    </div>


    <script>
        // Data for the portfolio images (using placeholders for demonstration)
        const photos = [
            { url: "https://placehold.co/800x600/1e293b/cbd5e1?text=Cityscape+at+Dawn", category: "Urban", caption: "Early morning hustle in the downtown core." },
            { url: "https://placehold.co/600x800/15803d/ffffff?text=Portrait+of+a+Stranger", category: "People", caption: "Candid shot capturing a fleeting expression." },
            { url: "https://placehold.co/1200x800/0ea5e9/ffffff?text=Coastal+Landscape", category: "Nature", caption: "Dramatic cliffs overlooking the Atlantic coast." },
            { url: "https://placehold.co/800x1200/5b21b6/ffffff?text=Studio+Product", category: "Commercial", caption: "High-key studio shot for a luxury brand." },
            { url: "https://placehold.co/1000x750/f97316/ffffff?text=Street+Performer", category: "Urban", caption: "The energy of a busker on a Saturday afternoon." },
            { url: "https://placehold.co/700x900/ca8a04/ffffff?text=Monochrome+Abstract", category: "Abstract", caption: "Exploring light and shadow in black and white." },
            { url: "https://placehold.co/1500x1000/0891b2/ffffff?text=Wildlife+Scene", category: "Nature", caption: "A quiet moment in the African savanna." },
            { url: "https://placehold.co/900x600/64748b/ffffff?text=Architecture+Detail", category: "Urban", caption: "Focusing on the geometric patterns of a modern building." }
        ];

        const galleryContainer = document.getElementById('gallery-container');
        const lightboxModal = document.getElementById('lightbox-modal');
        const lightboxImg = document.getElementById('lightbox-img');
        const lightboxCaption = document.getElementById('lightbox-caption');

        /**
         * Renders all images into the gallery container.
         */
        function renderGallery() {
            if (!galleryContainer) return; // Exit if container doesn't exist

            photos.forEach(photo => {
                // Create the wrapper div for each image
                const photoWrapper = document.createElement('div');
                photoWrapper.className = 'relative group overflow-hidden rounded-xl shadow-lg';
                
                // Create the image element
                const img = document.createElement('img');
                img.src = photo.url;
                img.alt = photo.caption;
                img.className = 'w-full h-full object-cover rounded-xl transform transition-transform duration-300';
                img.loading = 'lazy';
                
                // Add event listener to open the lightbox
                img.addEventListener('click', () => openLightbox(photo.url, photo.caption));
                
                // Overlay text for category (optional but good for portfolio)
                const overlay = document.createElement('div');
                overlay.className = 'absolute inset-0 bg-black/30 flex items-end opacity-0 group-hover:opacity-100 transition-opacity duration-300 rounded-xl';
                overlay.innerHTML = `<p class="p-4 text-lg font-semibold text-white">${photo.category}</p>`;

                photoWrapper.appendChild(img);
                photoWrapper.appendChild(overlay);
                galleryContainer.appendChild(photoWrapper);
            });
        }

        /**
         * Opens the full-screen lightbox modal with the selected image.
         * @param {string} src - The image URL.
         * @param {string} caption - The photo caption/description.
         */
        function openLightbox(src, caption) {
            lightboxImg.src = src;
            lightboxCaption.textContent = caption || 'View';
            lightboxModal.classList.remove('hidden');
            document.body.style.overflow = 'hidden'; // Prevent scrolling the body
        }

        /**
         * Closes the full-screen lightbox modal.
         */
        function closeLightbox() {
            lightboxModal.classList.add('hidden');
            document.body.style.overflow = ''; // Restore body scrolling
        }

        // Initialize the gallery when the window loads
        window.onload = renderGallery;

        // Handle keyboard escape key to close modal (good for accessibility)
        document.addEventListener('keydown', function(event) {
            if (event.key === 'Escape' && !lightboxModal.classList.contains('hidden')) {
                closeLightbox();
            }
        });
    </script>
</body>
</html>

