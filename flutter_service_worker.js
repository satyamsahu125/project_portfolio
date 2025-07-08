'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "18b7d5b6abdeea5830a18da922eed6d2",
"assets/AssetManifest.bin.json": "6ea8736afe95632502a8591604d721ab",
"assets/AssetManifest.json": "60e0e61daf4170689dc096dbb7c061a2",
"assets/assets/images/android.png": "231eece46cb353b9ed53ff1b4b30a369",
"assets/assets/images/calculator.jpg": "480ca203b0e0bf539c299519d6387870",
"assets/assets/images/css.png": "75e4d6d5a0f6b8f4e4030f9b00511ca7",
"assets/assets/images/dart.png": "9e1cb14cade7c3f3c6d256f1c968711d",
"assets/assets/images/desktop.png": "6fe20a42525d509ee13ee3578986cae1",
"assets/assets/images/facebook.png": "fc22ad9490239121cb89bd3bda153147",
"assets/assets/images/fb.png": "7af2d32395e7775aaf41e13d145ba668",
"assets/assets/images/flutter.png": "02e39f4351bd6b9348833c6050baeac7",
"assets/assets/images/github.png": "1dee40f2668d5c719eafa2c89296f5e7",
"assets/assets/images/html.png": "31105116ea1d90110b7c59a11c5adde3",
"assets/assets/images/img.png": "cb34a2e2a837ce3e49b0fbfa52b4a28a",
"assets/assets/images/instagram.png": "a87e6725633aa5a4d4d5c2f1e7e74cd2",
"assets/assets/images/ios.png": "5facda640185feed05a8da4c1df638d2",
"assets/assets/images/java.png": "ed373fba2dddfcb5f257c98330defe7c",
"assets/assets/images/Notes.jpg": "dac8a152d1d0c6ecc74c60c875a18299",
"assets/assets/images/python.png": "6606c48fbf49fc629449aa11170b8c1c",
"assets/assets/images/splash.png": "39acf89599fa98092f088e9d9e1730e5",
"assets/assets/images/telegram.png": "b37d6df3b36a74748a9bda890b3ba550",
"assets/assets/images/twitter.png": "b551e327fd2d617697c542487449d9e8",
"assets/assets/images/webs.png": "1a0ecc47dd8588c30d9d51d609b245db",
"assets/assets/images/whatsapp.png": "7611f02494be1e121a6f6a391d3eafdc",
"assets/assets/svg/coder.svg": "af82984b311219d9c495d1a5e1b6959c",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "ebeed290bdd5b866145dc19c6baedc89",
"assets/NOTICES": "047ab4a70a7658308366509c8a814702",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "6cfe36b4647fbfa15683e09e7dd366bc",
"canvaskit/canvaskit.js.symbols": "68eb703b9a609baef8ee0e413b442f33",
"canvaskit/canvaskit.wasm": "efeeba7dcc952dae57870d4df3111fad",
"canvaskit/chromium/canvaskit.js": "ba4a8ae1a65ff3ad81c6818fd47e348b",
"canvaskit/chromium/canvaskit.js.symbols": "5a23598a2a8efd18ec3b60de5d28af8f",
"canvaskit/chromium/canvaskit.wasm": "64a386c87532ae52ae041d18a32a3635",
"canvaskit/skwasm.js": "f2ad9363618c5f62e813740099a80e63",
"canvaskit/skwasm.js.symbols": "80806576fa1056b43dd6d0b445b4b6f7",
"canvaskit/skwasm.wasm": "f0dfd99007f989368db17c9abeed5a49",
"canvaskit/skwasm_st.js": "d1326ceef381ad382ab492ba5d96f04d",
"canvaskit/skwasm_st.js.symbols": "c7e7aac7cd8b612defd62b43e3050bdd",
"canvaskit/skwasm_st.wasm": "56c3973560dfcbf28ce47cebe40f3206",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "76f08d47ff9f5715220992f993002504",
"flutter_bootstrap.js": "4dc78f1e5908fa21499b408aa6f111de",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "3a651877b5a345f35894bd2268053e91",
"/": "3a651877b5a345f35894bd2268053e91",
"main.dart.js": "152f34b9c5153005c96b48fa4bf80c9a",
"manifest.json": "d6b034ac2f211f68876908b93c5c5a81",
"splash/img/dark-1x.png": "c302b9f31b98c5e548c7420b86fc8784",
"splash/img/dark-2x.png": "c32f1788d4e0061bd08e4a186c443836",
"splash/img/dark-3x.png": "f6a89cc55925641676fa06d8acadc759",
"splash/img/dark-4x.png": "6b6d7e77c7d0c85f2808345e41723bea",
"splash/img/light-1x.png": "c302b9f31b98c5e548c7420b86fc8784",
"splash/img/light-2x.png": "c32f1788d4e0061bd08e4a186c443836",
"splash/img/light-3x.png": "f6a89cc55925641676fa06d8acadc759",
"splash/img/light-4x.png": "6b6d7e77c7d0c85f2808345e41723bea",
"version.json": "1c2bd8f8903fa91dee8f8f05bb35cf00"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
