<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <title>NexusShop — Modern E‑Commerce</title>

    <!-- Fonts & Icons -->
    <link href="[fonts.googleapis.com](https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&family=Poppins:wght@500;600;700;800&display=swap)" rel="stylesheet">
    <link rel="stylesheet" href="[cdnjs.cloudflare.com](https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css)">

    <style>
        :root {
            /* Light theme (default) */
            --bg-primary: #ffffff;
            --bg-secondary: #f8fafc;
            --bg-surface: #ffffff;
            --text-primary: #1e293b;
            --text-secondary: #64748b;
            --accent-primary: #3b82f6;
            --accent-secondary: #60a5fa;
            --accent-gradient: linear-gradient(135deg, #3b82f6, #8b5cf6);
            --border-color: #e2e8f0;
            --success: #10b981;
            --warning: #f59e0b;
            --error: #ef4444;
            --shadow-sm: 0 1px 2px 0 rgba(0, 0, 0, 0.05);
            --shadow-md: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06);
            --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05);
            --radius-sm: 8px;
            --radius-md: 12px;
            --radius-lg: 16px;
            --radius-xl: 24px;
            --transition: all 0.2s ease-in-out;
        }

        [data-theme="dark"] {
            --bg-primary: #0f172a;
            --bg-secondary: #1e293b;
            --bg-surface: #334155;
            --text-primary: #f1f5f9;
            --text-secondary: #94a3b8;
            --border-color: #334155;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        html,
        body {
            height: 100%;
            scroll-behavior: smooth;
        }

        body {
            font-family: 'Inter', system-ui, -apple-system, sans-serif;
            background: var(--bg-primary);
            color: var(--text-primary);
            line-height: 1.6;
            transition: var(--transition);
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
        }

        /* Container & Layout */
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        /* Header */
        header {
            position: sticky;
            top: 0;
            z-index: 50;
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 1px solid var(--border-color);
            transition: var(--transition);
        }

        [data-theme="dark"] header {
            background: rgba(15, 23, 42, 0.95);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 1rem 0;
            gap: 2rem;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-family: 'Poppins', sans-serif;
            font-weight: 700;
            font-size: 1.5rem;
            color: var(--text-primary);
        }

        .brand .accent {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        /* Navigation */
        .main-nav {
            display: flex;
            align-items: center;
            gap: 1.5rem;
        }

        .nav-list {
            display: flex;
            gap: 0.5rem;
            list-style: none;
        }

        .nav-link {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.75rem 1rem;
            border-radius: var(--radius-md);
            color: var(--text-secondary);
            font-weight: 500;
            transition: var(--transition);
            position: relative;
        }

        .nav-link:hover {
            color: var(--accent-primary);
            background: rgba(59, 130, 246, 0.1);
        }

        .nav-link::after {
            content: '';
            position: absolute;
            bottom: -2px;
            left: 50%;
            width: 0;
            height: 2px;
            background: var(--accent-gradient);
            transition: var(--transition);
            transform: translateX(-50%);
        }

        .nav-link:hover::after {
            width: 20px;
        }

        /* Search */
        .search {
            position: relative;
            display: flex;
            align-items: center;
            background: var(--bg-secondary);
            border-radius: var(--radius-xl);
            padding: 0.75rem 1rem;
            min-width: 280px;
            transition: var(--transition);
        }

        .search:focus-within {
            box-shadow: 0 0 0 3px rgba(59, 130, 246, 0.1);
        }

        .search input {
            flex: 1;
            border: none;
            background: transparent;
            outline: none;
            color: var(--text-primary);
            font-size: 0.95rem;
        }

        .search input::placeholder {
            color: var(--text-secondary);
        }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            padding: 0.75rem 1.5rem;
            border: none;
            border-radius: var(--radius-xl);
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
            text-decoration: none;
        }

        .btn-primary {
            background: var(--accent-gradient);
            color: white;
            box-shadow: var(--shadow-md);
        }

        .btn-primary:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
        }

        .btn-secondary {
            background: var(--bg-secondary);
            color: var(--text-primary);
            border: 1px solid var(--border-color);
        }

        .btn-secondary:hover {
            background: var(--bg-surface);
        }

        .icon-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            border: none;
            border-radius: var(--radius-md);
            background: transparent;
            color: var(--text-secondary);
            cursor: pointer;
            transition: var(--transition);
        }

        .icon-btn:hover {
            background: var(--bg-secondary);
            color: var(--accent-primary);
        }

        /* Hero Section */
        .hero {
            position: relative;
            min-height: 500px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: linear-gradient(135deg, rgba(59, 130, 246, 0.9), rgba(139, 92, 246, 0.9)),
                url('[images.unsplash.com](https://images.unsplash.com/photo-1555529669-e69e7aa0ba9a?auto=format&fit=crop&w=1400&q=80)') center/cover;
            color: white;
            border-radius: 0 0 var(--radius-xl) var(--radius-xl);
            overflow: hidden;
        }

        .hero::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(45deg, rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0.1));
        }

        .hero-content {
            position: relative;
            z-index: 2;
            max-width: 800px;
            padding: 2rem;
        }

        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 3.5rem;
            font-weight: 800;
            margin-bottom: 1rem;
            line-height: 1.1;
        }

        .hero p {
            font-size: 1.25rem;
            margin-bottom: 2rem;
            opacity: 0.95;
        }

        .hero-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
        }

        /* Sections */
        .section {
            padding: 4rem 0;
        }

        .section-title {
            text-align: center;
            margin-bottom: 3rem;
        }

        .section-title h2 {
            font-family: 'Poppins', sans-serif;
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 0.5rem;
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }

        .section-title p {
            color: var(--text-secondary);
            font-size: 1.1rem;
        }

        /* Grid System */
        .grid {
            display: grid;
            gap: 1.5rem;
        }

        .categories-grid {
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        }

        .products-grid {
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
        }

        /* Cards */
        .card {
            background: var(--bg-surface);
            border-radius: var(--radius-lg);
            padding: 1.5rem;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
            border: 1px solid var(--border-color);
        }

        .card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
        }

        .cat-card {
            text-align: center;
            cursor: pointer;
            padding: 2rem 1.5rem;
        }

        .cat-card .icon {
            font-size: 2.5rem;
            margin-bottom: 1rem;
            color: var(--accent-primary);
            transition: var(--transition);
        }

        .cat-card:hover .icon {
            transform: scale(1.1);
            color: var(--accent-secondary);
        }

        .cat-card h4 {
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: var(--text-primary);
        }

        .cat-card p {
            color: var(--text-secondary);
            font-size: 0.9rem;
        }

        /* Product Cards */
        .product {
            position: relative;
            background: var(--bg-surface);
            border-radius: var(--radius-lg);
            overflow: hidden;
            transition: var(--transition);
            box-shadow: var(--shadow-sm);
        }

        .product:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-lg);
        }

        .product-badge {
            position: absolute;
            top: 1rem;
            left: 1rem;
            padding: 0.5rem 0.75rem;
            border-radius: var(--radius-md);
            font-size: 0.8rem;
            font-weight: 600;
            z-index: 2;
        }

        .badge-new {
            background: var(--accent-gradient);
            color: white;
        }

        .badge-sale {
            background: var(--error);
            color: white;
        }

        .product-image {
            width: 100%;
            height: 200px;
            object-fit: cover;
            transition: var(--transition);
        }

        .product:hover .product-image {
            transform: scale(1.05);
        }

        .product-body {
            padding: 1.5rem;
        }

        .product-title {
            font-weight: 600;
            margin-bottom: 0.5rem;
            color: var(--text-primary);
        }

        .product-category {
            color: var(--text-secondary);
            font-size: 0.9rem;
            margin-bottom: 1rem;
        }

        .price-row {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 1rem;
        }

        .price {
            font-weight: 700;
            font-size: 1.25rem;
            color: var(--text-primary);
        }

        .old-price {
            color: var(--text-secondary);
            text-decoration: line-through;
            font-size: 0.9rem;
        }

        .rating {
            color: #fbbf24;
            font-size: 0.9rem;
        }

        .product-footer {
            display: flex;
            gap: 0.5rem;
            padding: 0 1.5rem 1.5rem;
        }

        .add-btn {
            flex: 1;
            background: var(--accent-gradient);
            color: white;
            border: none;
            border-radius: var(--radius-md);
            padding: 0.75rem;
            font-weight: 600;
            cursor: pointer;
            transition: var(--transition);
        }

        .add-btn:hover {
            transform: translateY(-1px);
        }

        .wish-btn {
            background: var(--bg-secondary);
            border: 1px solid var(--border-color);
            border-radius: var(--radius-md);
            padding: 0.75rem;
            cursor: pointer;
            transition: var(--transition);
        }

        .wish-btn:hover {
            background: var(--error);
            color: white;
            border-color: var(--error);
        }

        /* Deal Section */
        .deal {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 2rem;
            background: var(--bg-secondary);
            border-radius: var(--radius-xl);
            overflow: hidden;
            padding: 0;
        }

        .deal-image {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .deal-content {
            padding: 3rem;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .timer {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 0.75rem;
            margin: 2rem 0;
        }

        .time-box {
            background: var(--accent-primary);
            color: white;
            padding: 1rem;
            border-radius: var(--radius-md);
            text-align: center;
        }

        .time-value {
            font-size: 1.5rem;
            font-weight: 700;
        }

        .time-label {
            font-size: 0.8rem;
            opacity: 0.9;
        }

        /* Testimonials */
        .testimonials {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 1.5rem;
        }

        .testimonial {
            background: var(--bg-surface);
            padding: 2rem;
            border-radius: var(--radius-lg);
            box-shadow: var(--shadow-sm);
        }

        .testimonial-rating {
            color: #fbbf24;
            margin-bottom: 1rem;
        }

        .testimonial-content {
            color: var(--text-primary);
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }

        .testimonial-author {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .author-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            object-fit: cover;
        }

        .author-info h4 {
            font-weight: 600;
            margin-bottom: 0.25rem;
        }

        .author-role {
            color: var(--text-secondary);
            font-size: 0.9rem;
        }

        /* Newsletter */
        .newsletter {
            background: var(--accent-gradient);
            color: white;
            border-radius: var(--radius-xl);
            padding: 3rem;
            text-align: center;
        }

        .newsletter-form {
            display: flex;
            gap: 1rem;
            justify-content: center;
            margin-top: 2rem;
            flex-wrap: wrap;
        }

        .newsletter-input {
            flex: 1;
            min-width: 300px;
            padding: 1rem 1.5rem;
            border: none;
            border-radius: var(--radius-xl);
            font-size: 1rem;
        }

        .newsletter-input:focus {
            outline: none;
            box-shadow: 0 0 0 3px rgba(255, 255, 255, 0.3);
        }

        /* Footer */
        footer {
            background: var(--bg-secondary);
            padding: 3rem 0 1rem;
            margin-top: 4rem;
        }

        .footer-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            margin-bottom: 2rem;
        }

        .footer-brand {
            font-family: 'Poppins', sans-serif;
            font-weight: 700;
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }

        .footer-description {
            color: var(--text-secondary);
            margin-bottom: 1.5rem;
            line-height: 1.6;
        }

        .social-links {
            display: flex;
            gap: 1rem;
        }

        .social-link {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            border-radius: 50%;
            background: var(--bg-surface);
            color: var(--text-primary);
            transition: var(--transition);
        }

        .social-link:hover {
            background: var(--accent-primary);
            color: white;
            transform: translateY(-2px);
        }

        .footer-heading {
            font-weight: 600;
            margin-bottom: 1rem;
            color: var(--text-primary);
        }

        .footer-links {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.5rem;
        }

        .footer-links a {
            color: var(--text-secondary);
            transition: var(--transition);
        }

        .footer-links a:hover {
            color: var(--accent-primary);
        }

        .footer-bottom {
            text-align: center;
            padding-top: 2rem;
            border-top: 1px solid var(--border-color);
            color: var(--text-secondary);
        }

        /* Theme Toggle */
        .theme-toggle {
            position: fixed;
            bottom: 2rem;
            right: 2rem;
            z-index: 100;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            background: var(--accent-gradient);
            color: white;
            border: none;
            cursor: pointer;
            box-shadow: var(--shadow-lg);
            transition: var(--transition);
        }

        .theme-toggle:hover {
            transform: scale(1.1);
        }

        /* Responsive Design */
        @media (max-width: 1024px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .deal {
                grid-template-columns: 1fr;
            }
            
            .deal-image {
                height: 300px;
            }
        }

        @media (max-width: 768px) {
            .header-inner {
                flex-wrap: wrap;
                gap: 1rem;
            }
            
            .main-nav {
                display: none;
            }
            
            .search {
                min-width: auto;
                flex: 1;
            }
            
            .hero h1 {
                font-size: 2rem;
            }
            
            .hero p {
                font-size: 1.1rem;
            }
            
            .section {
                padding: 3rem 0;
            }
            
            .section-title h2 {
                font-size: 2rem;
            }
            
            .newsletter-form {
                flex-direction: column;
            }
            
            .newsletter-input {
                min-width: auto;
            }
        }

        @media (max-width: 480px) {
            .hero-buttons {
                flex-direction: column;
            }
            
            .timer {
                grid-template-columns: repeat(2, 1fr);
            }
            
            .categories-grid {
                grid-template-columns: 1fr;
            }
        }

        /* Animation Keyframes */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateX(-20px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }

        /* Utility Classes */
        .animate-fade-in {
            animation: fadeIn 0.6s ease-out;
        }

        .animate-slide-in {
            animation: slideIn 0.6s ease-out;
        }

        .text-gradient {
            background: var(--accent-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
    </style>
</head>

<body>
    <!-- Theme Toggle Button -->
    <button class="theme-toggle" id="themeToggle">
        <i class="fas fa-moon"></i>
    </button>

    <header>
        <div class="container header-inner">
            <div class="brand">
                <i class="fas fa-bolt"></i>
                <span>Nexus<span class="accent">Shop</span></span>
            </div>

            <nav class="main-nav">
                <ul class="nav-list">
                    <li><a href="#" class="nav-link"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#" class="nav-link"><i class="fas fa-th-large"></i> Categories</a></li>
                    <li><a href="#" class="nav-link"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals" class="nav-link"><i class="fas fa-tag"></i> Deals</a></li>
                    <li><a href="#about" class="nav-link"><i class="fas fa-info-circle"></i> About</a></li>
                </ul>
            </nav>

            <div class="search">
                <i class="fas fa-search"></i>
                <input type="search" placeholder="Search products..." id="searchInput">
            </div>

            <div class="header-actions">
                <button class="icon-btn" title="Account"><i class="far fa-user"></i></button>
                <button class="icon-btn" title="Wishlist"><i class="far fa-heart"></i></button>
                <button class="icon-btn" title="Cart" id="cartBtn">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </button>
            </div>
        </div>
    </header>

    <main>
        <!-- Hero Section -->
        <section class="hero">
            <div class="hero-content">
                <h1>Elevate Your Style with Premium Winter Collection</h1>
                <p>Discover curated fashion, cutting-edge technology, and exclusive accessories. Free shipping on all orders over $50.</p>
                <div class="hero-buttons">
                    <button class="btn btn-primary" id="shopNow">
                        <i class="fas fa-shopping-bag"></i> Shop Collection
                    </button>
                    <button class="btn btn-secondary" id="exploreDeals">
                        <i class="fas fa-gift"></i> View Deals
                    </button>
                </div>
            </div>
        </section>

        <!-- Categories Section -->
        <section class="section">
            <div class="container">
                <div class="section-title">
                    <h2>Shop by Category</h2>
                    <p>Explore our carefully curated collections</p>
                </div>
                <div class="grid categories-grid" id="categoriesGrid"></div>
            </div>
        </section>

        <!-- Products Section -->
        <section class="section">
            <div class="container">
                <div class="section-title">
                    <h2>Trending Now</h2>
                    <p>Discover what's hot right now</p>
                </div>
                <div class="grid products-grid" id="productsGrid"></div>
            </div>
        </section>

        <!-- Flash Sale Section -->
        <section id="deals" class="section">
            <div class="container">
                <div class="section-title">
                    <h2>Flash Sale</h2>
                    <p>Limited time offers - don't miss out!</p>
                </div>
                <div class="deal">
                    <img src="[images.unsplash.com](https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=1200&q=80)" 
                         alt="MacBook Air M2" class="deal-image">
                    <div class="deal-content">
                        <h3>MacBook Air M2</h3>
                        <p>Supercharged by the next-generation M2 chip, featuring an all-new design.</p>
                        
                        <div class="timer">
                            <div class="time-box">
                                <div class="time-value" id="dealDays">0</div>
                                <div class="time-label">Days</div>
                            </div>
                            <div class="time-box">
                                <div class="time-value" id="dealHours">00</div>
                                <div class="time-label">Hours</div>
                            </div>
                            <div class="time-box">
                                <div class="time-value" id="dealMinutes">00</div>
                                <div class="time-label">Minutes</div>
                            </div>
                            <div class="time-box">
                                <div class="time-value" id="dealSeconds">00</div>
                                <div class="time-label">Seconds</div>
                            </div>
                        </div>

                        <div style="display: flex; align-items: center; gap: 1rem; margin: 1.5rem 0;">
                            <div class="price">$999 <span class="old-price">$1,199</span></div>
                            <span style="background: var(--error); color: white; padding: 0.5rem 1rem; border-radius: var(--radius-md); font-weight: 600;">
                                -17% OFF
                            </span>
                        </div>

                        <p style="margin-bottom: 1.5rem; color: var(--text-secondary);">
                            Only <strong style="color: var(--error);">12</strong> items left at this price!
                        </p>

                        <button class="btn btn-primary" id="buyDeal" style="align-self: flex-start;">
                            <i class="fas fa-bolt"></i> Buy Now
                        </button>
                    </div>
                </div>
            </div>
        </section>

        <!-- Testimonials Section -->
        <section class="section">
            <div class="container">
                <div class="section-title">
                    <h2>Customer Love</h2>
                    <p>What our customers are saying</p>
                </div>
                <div class="testimonials">
                    <div class="testimonial">
                        <div class="testimonial-rating">★★★★★</div>
                        <p class="testimonial-content">"The quality exceeded my expectations! Fast shipping and excellent customer support made this a 5-star experience."</p>
                        <div class="testimonial-author">
                            <img src="[images.unsplash.com](https://images.unsplash.com/photo-1544005313-94ddf0286df2?auto=format&fit=crop&w=80&q=80)" 
                                 alt="Ava Martin" class="author-avatar">
                            <div class="author-info">
                                <h4>Ava Martin</h4>
                                <p class="author-role">Verified Buyer</p>
                            </div>
                        </div>
                    </div>
                    
                    <div class="testimonial">
                        <div class="testimonial-rating">★★★★☆</div>
                        <p class="testimonial-content">"Great selection and smooth checkout process. Will definitely shop here again for my tech needs."</p>
                        <div class="testimonial-author">
                            <img src="[images.unsplash.com](https://images.unsplash.com/photo-1546456073-6712f79251bb?auto=format&fit=crop&w=80&q=80)" 
                                 alt="Michael Lee" class="author-avatar">
                            <div class="author-info">
                                <h4>Michael Lee</h4>
                                <p class="author-role">Frequent Shopper</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Newsletter Section -->
        <section class="section">
            <div class="container">
                <div class="newsletter">
                    <h3>Stay in the Loop</h3>
                    <p>Subscribe to get exclusive offers and new arrivals before anyone else</p>
                    <form class="newsletter-form" id="newsletterForm">
                        <input type="email" placeholder="Enter your email address" class="newsletter-input" id="newsletterEmail" required>
                        <button type="submit" class="btn btn-primary">Subscribe</button>
                    </form>
                    <div id="newsletterMsg" style="display: none;"></div>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div>
                    <div class="footer-brand">NexusShop</div>
                    <p class="footer-description">
                        Your premier destination for quality products and exceptional shopping experiences.
                    </p>
                    <div class="social-links">
                        <a href="#" class="social-link"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-twitter"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-instagram"></i></a>
                        <a href="#" class="social-link"><i class="fab fa-pinterest"></i></a>
                    </div>
                </div>

                <div>
                    <h4 class="footer-heading">Shop</h4>
                    <ul class="footer-links">
                        <li><a href="#">New Arrivals</a></li>
                        <li><a href="#">Best Sellers</a></li>
                        <li><a href="#">Sale Items</a></li>
                        <li><a href="#">Gift Cards</a></li>
                    </ul>
                </div>

                <div>
                    <h4 class="footer-heading">Support</h4>
                    <ul class="footer-links">
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Shipping Info</a></li>
                        <li><a href="#">Returns</a></li>
                        <li><a href="#">FAQs</a></li>
                    </ul>
                </div>

                <div>
                    <h4 class="footer-heading">Company</h4>
                    <ul class="footer-links">
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
            </div>

            <div class="footer-bottom">
                <p>&copy; <span id="year"></span> NexusShop. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <script>
        // Sample data
        const CATEGORIES = [
            { id: 'phones', name: 'Smartphones', icon: 'fa-mobile-alt', description: 'Latest models' },
            { id: 'laptops', name: 'Laptops', icon: 'fa-laptop', description: 'Premium performance' },
            { id: 'clothing', name: 'Fashion', icon: 'fa-tshirt', description: 'Trendy styles' },
            { id: 'gadgets', name: 'Gadgets', icon: 'fa-headphones', description: 'Tech essentials' },
            { id: 'footwear', name: 'Footwear', icon: 'fa-shoe-prints', description: 'Comfort & style' },
            { id: 'accessories', name: 'Accessories', icon: 'fa-watch', description: 'Complete your look' }
        ];

        const PRODUCTS = [
            {
                id: 1,
                title: 'iPhone 14 Pro Max',
                price: 1099,
                oldPrice: 1199,
                rating: 5,
                reviews: 128,
                badge: 'New',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1601784551446-20c9e07cdbdb?auto=format&fit=crop&w=600&q=80)',
                category: 'phones'
            },
            {
                id: 2,
                title: 'MacBook Pro 14"',
                price: 1999,
                rating: 4,
                reviews: 86,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1593642632823-8f785ba67e45?auto=format&fit=crop&w=600&q=80)',
                category: 'laptops'
            },
            {
                id: 3,
                title: 'Apple Watch Series 8',
                price: 349,
                oldPrice: 399,
                rating: 5,
                reviews: 214,
                badge: '-25%',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1529374255404-311a2a4f1fd9?auto=format&fit=crop&w=600&q=80)',
                category: 'accessories'
            },
            {
                id: 4,
                title: 'Nike Air Max 270',
                price: 150,
                rating: 4,
                reviews: 53,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1542272604-787c3835535d?auto=format&fit=crop&w=600&q=80)',
                category: 'footwear'
            },
            {
                id: 5,
                title: 'Sony A7 IV Camera',
                price: 2499,
                rating: 5,
                reviews: 42,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?auto=format&fit=crop&w=600&q=80)',
                category: 'gadgets'
            },
            {
                id: 6,
                title: 'Premium Perfume',
                price: 120,
                rating: 5,
                reviews: 189,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80)',
                category: 'accessories'
            },
            {
                id: 7,
                title: 'Travel Backpack',
                price: 79,
                oldPrice: 99,
                rating: 4,
                reviews: 67,
                badge: '-20%',
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1551232864-3f0890e580d9?auto=format&fit=crop&w=600&q=80)',
                category: 'accessories'
            },
            {
                id: 8,
                title: 'Wireless Headphones',
                price: 399,
                rating: 5,
                reviews: 156,
                img: '[images.unsplash.com](https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=600&q=80)',
                category: 'gadgets'
            }
        ];

        // Initialize
        let cartCount = 0;
        let currentTheme = 'light';

        function init() {
            renderCategories();
            renderProducts(PRODUCTS);
            setupEventListeners();
            updateCartCount();
            document.getElementById('year').textContent = new Date().getFullYear();
            startDealTimer();
        }

        function renderCategories() {
            const grid = document.getElementById('categoriesGrid');
            grid.innerHTML = CATEGORIES.map(cat => `
                <div class="card cat-card" data-category="${cat.id}">
                    <div class="icon">
                        <i class="fas ${cat.icon}"></i>
                    </div>
                    <h4>${cat.name}</h4>
                    <p>${cat.description}</p>
                </div>
            `).join('');
        }

        function renderProducts(products) {
            const grid = document.getElementById('productsGrid');
            grid.innerHTML = products.map(product => `
                <div class="product">
                    ${product.badge ? `
                        <div class="product-badge ${product.badge.startsWith('-') ? 'badge-sale' : 'badge-new'}">
                            ${product.badge}
                        </div>
                    ` : ''}
                    <img src="${product.img}" alt="${product.title}" class="product-image">
                    <div class="product-body">
                        <h3 class="product-title">${product.title}</h3>
                        <p class="product-category">${product.category}</p>
                        <div class="price-row">
                            <div>
                                <div class="price">$${product.price}</div>
                                ${product.oldPrice ? `<div class="old-price">$${product.oldPrice}</div>` : ''}
                            </div>
                            <div class="rating">${'★'.repeat(Math.round(product.rating))}</div>
                        </div>
                    </div>
                    <div class="product-footer">
                        <button class="add-btn" data-id="${product.id}">
                            <i class="fas fa-shopping-cart"></i> Add to Cart
                        </button>
                        <button class="wish-btn">
                            <i class="far fa-heart"></i>
                        </button>
                    </div>
                </div>
            `).join('');
        }

        function setupEventListeners() {
            // Add to cart
            document.addEventListener('click', e => {
                if (e.target.closest('.add-btn')) {
                    const id = e.target.closest('.add-btn').dataset.id;
                    addToCart(parseInt(id));
                }
            });

            // Theme toggle
            document.getElementById('themeToggle').addEventListener('click', toggleTheme);

            // Newsletter form
            document.getElementById('newsletterForm').addEventListener('submit', handleNewsletter);

            // Smooth scrolling
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

            // Category filtering
            document.querySelectorAll('.cat-card').forEach(card => {
                card.addEventListener('click', () => {
                    const category = card.dataset.category;
                    filterProducts(category);
                });
            });

            // Search functionality
            document.getElementById('searchInput').addEventListener('input', debounce((e) => {
                filterProducts(e.target.value);
            }, 300));
        }

        function addToCart(productId) {
            cartCount++;
            updateCartCount();
            
            // Visual feedback
            const btn = document.querySelector(`.add-btn[data-id="${productId}"]`);
            if (btn) {
                const original = btn.innerHTML;
                btn.innerHTML = '<i class="fas fa-check"></i> Added';
                btn.style.background = 'var(--success)';
                setTimeout(() => {
                    btn.innerHTML = original;
                    btn.style.background = '';
                }, 2000);
            }
        }

        function updateCartCount() {
            document.getElementById('cartCount').textContent = cartCount;
        }

        function filterProducts(query) {
            if (!query) {
                renderProducts(PRODUCTS);
                return;
            }

            const filtered = PRODUCTS.filter(product =>
                product.title.toLowerCase().includes(query.toLowerCase()) ||
                product.category.toLowerCase().includes(query.toLowerCase())
            );
            renderProducts(filtered);
        }

        function toggleTheme() {
            currentTheme = currentTheme === 'light' ? 'dark' : 'light';
            document.documentElement.setAttribute('data-theme', currentTheme);
            const icon = document.querySelector('.theme-toggle i');
            icon.className = currentTheme === 'light' ? 'fas fa-moon' : 'fas fa-sun';
        }

        function handleNewsletter(e) {
            e.preventDefault();
            const email = document.getElementById('newsletterEmail').value;
            const msg = document.getElementById('newsletterMsg');
            
            if (!email || !email.includes('@')) {
                showMessage(msg, 'Please enter a valid email address.', 'error');
                return;
            }
            
            showMessage(msg, 'Thank you for subscribing!', 'success');
            document.getElementById('newsletterEmail').value = '';
        }

        function showMessage(element, text, type) {
            element.textContent = text;
            element.style.display = 'block';
            element.style.color = type === 'error' ? '#ff6b6b' : '#51cf66';
            
            setTimeout(() => {
                element.style.display = 'none';
            }, 3000);
        }

        function startDealTimer() {
            const target = Date.now() + (24 * 60 + 36) * 60 * 1000;
            
            function updateTimer() {
                const now = Date.now();
                const diff = target - now;
                
                if (diff <= 0) {
                    clearInterval(timer);
                    return;
                }
                
                const days = Math.floor(diff / (1000 * 60 * 60 * 24));
                const hours = Math.floor((diff % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
                const minutes = Math.floor((diff % (1000 * 60 * 60)) / (1000 * 60));
                const seconds = Math.floor((diff % (1000 * 60)) / 1000);
                
                document.getElementById('dealDays').textContent = days;
                document.getElementById('dealHours').textContent = hours.toString().padStart(2, '0');
                document.getElementById('dealMinutes').textContent = minutes.toString().padStart(2, '0');
                document.getElementById('dealSeconds').textContent = seconds.toString().padStart(2, '0');
            }
            
            updateTimer();
            const timer = setInterval(updateTimer, 1000);
        }

        function debounce(func, wait) {
            let timeout;
            return function executedFunction(...args) {
                const later = () => {
                    clearTimeout(timeout);
                    func(...args);
                };
                clearTimeout(timeout);
                timeout = setTimeout(later, wait);
            };
        }

        // Initialize the app
        document.addEventListener('DOMContentLoaded', init);
    </script>
</body>

</html>
