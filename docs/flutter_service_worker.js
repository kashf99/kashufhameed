'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "973abbe7d531703261dddf8085099b03",
"assets/AssetManifest.bin.json": "fc8cd54a64817a650cd0211b35885515",
"assets/AssetManifest.json": "499403ff3e1e1302b84669176c088ecf",
"assets/assets/icons/appstore.png": "8d8f08e1de9007e8af37f7aa0ad49446",
"assets/assets/icons/behance.svg": "35ad2d47e647d0b168e7707b2984c6b5",
"assets/assets/icons/bloc.png": "977fbfba561065f9a68c4b47f9774531",
"assets/assets/icons/check.svg": "4220c82511cc1dfb40b8bba7d25c5f55",
"assets/assets/icons/dart.png": "1ab71d33e7ba834836197b4fa8726da0",
"assets/assets/icons/download.svg": "628700a3031424d215a441fab2da1731",
"assets/assets/icons/dribble.svg": "d392567c5678d42472d2c7b766268101",
"assets/assets/icons/firebase.png": "36170822afe4c716cfbdb96dac8cd10e",
"assets/assets/icons/flutter.png": "1105c9a994c1a6638daed558d5b631fd",
"assets/assets/icons/github.svg": "9226aa209923e38c0a6ddcb236e2bc68",
"assets/assets/icons/insta.png": "394ee100aa248a893672205e6c859f4f",
"assets/assets/icons/linkedin.svg": "5b2195ddf9e879047dd8a163c4194920",
"assets/assets/icons/playstore.png": "e05b341b1eb8dd0b21ec4d2628e8771f",
"assets/assets/icons/threads.png": "84b5b7301c4d550b69fd1246d7453ecd",
"assets/assets/icons/twitter.svg": "a4a0163fef48a4247a305528c07bc4fa",
"assets/assets/images/alarm.jpg": "7f8f2e55f5f47deaf440b3be64ca15d7",
"assets/assets/images/background.png": "7c2354126e7a48591f42852ba27ee1cd",
"assets/assets/images/car.png": "ae3e0dda1da997a4e0ccd5cf1a25d2cd",
"assets/assets/images/chat.png": "489b7f6246ce741be85ca0d551e9d07b",
"assets/assets/images/churail.png": "8e908cc070d34f48db79bccfa8e251c1",
"assets/assets/images/coffee.png": "0a3380640f0eb6e36b694dafb7fe8e97",
"assets/assets/images/cui.png": "287f9787968f5df14897e9066c22a388",
"assets/assets/images/doctor.png": "b7a983fb5bf36114133c169f66bbfef7",
"assets/assets/images/image.png": "1c9ef987c42e2618a5bfec34f3057e8d",
"assets/assets/images/player.png": "612730c3861b2af0a0ae161ac8a72345",
"assets/assets/images/profile.png": "1d35475ce4996f70c2bce6dc8607d077",
"assets/assets/images/projects/chatgenie/ChatGenie1.jpg": "8f1c91287eaaf37470f218aa8e39d44c",
"assets/assets/images/projects/chatgenie/ChatGenie10.jpg": "8474c9ab33b507c5d4fc379802d49a4e",
"assets/assets/images/projects/chatgenie/ChatGenie11.jpg": "332aa54f0c3d0304746ae411363972d0",
"assets/assets/images/projects/chatgenie/ChatGenie2.jpg": "637b033cafbf4a6baefc04effb9c97b6",
"assets/assets/images/projects/chatgenie/ChatGenie3.jpg": "6750dfb92184a9de1caaa2a55cb47cb7",
"assets/assets/images/projects/chatgenie/ChatGenie4.jpg": "9aea9727d42058468fc5c9f72cd0cd54",
"assets/assets/images/projects/chatgenie/ChatGenie5.jpg": "6b862a3078491de87d5d6b7fa0da45ab",
"assets/assets/images/projects/chatgenie/ChatGenie6.jpg": "5e1df6f221ed7d171160ed6340657634",
"assets/assets/images/projects/chatgenie/ChatGenie7.jpg": "b8c02a18871849e1263d1d65275f5858",
"assets/assets/images/projects/chatgenie/ChatGenie8.jpg": "3a0ad2fea5858b57f4b7ec7c7f04aeda",
"assets/assets/images/projects/chatgenie/ChatGenie9.jpg": "8ea22f7bb70218d0ac3756c7c40af1a2",
"assets/assets/images/projects/cinemana/cin1.png": "e2419b57b83701081a7e28562b79a456",
"assets/assets/images/projects/cinemana/cin10.png": "b13aeb2ef37fc8eaf02a6e1e92e660de",
"assets/assets/images/projects/cinemana/cin11.png": "410d1c4aef11ca3e1694a00699ee3dcd",
"assets/assets/images/projects/cinemana/cin12.png": "e300554b2800578fb612032e1063e374",
"assets/assets/images/projects/cinemana/cin13.png": "6726915ef0740018fe4b3b5d5c43d114",
"assets/assets/images/projects/cinemana/cin14.png": "434bf94e5f460f209a475871b819425a",
"assets/assets/images/projects/cinemana/cin15.png": "b7c4d3da80fc09f85b3bda86404e9de7",
"assets/assets/images/projects/cinemana/cin2.png": "da0baf896f3560a9177b14d579e936e6",
"assets/assets/images/projects/cinemana/cin3.png": "388d593271dc76adb54e24f0b7a730e8",
"assets/assets/images/projects/cinemana/cin4.png": "361ec9dd77596025a1e11e4d62c84241",
"assets/assets/images/projects/cinemana/cin5.png": "e167a14df59613c775c1f1a88154152a",
"assets/assets/images/projects/cinemana/cin6.png": "d2f927da51bb9bedfc6f3b3fac70b4bf",
"assets/assets/images/projects/cinemana/cin7.png": "3980e5c6c2120e3950537061df7e5cfb",
"assets/assets/images/projects/cinemana/cin8.png": "d51a4a20f0a4020dcc7f820b718b20c1",
"assets/assets/images/projects/cinemana/cin9.png": "ec3a6aeb91a3a221b423d12352485566",
"assets/assets/images/projects/iotcare/iot1.png": "aa38f7dedf72e61943109957ad767739",
"assets/assets/images/projects/iotcare/iot2.png": "2a4b5bafac298d0d74ded9ef3de6c1a2",
"assets/assets/images/projects/iotcare/iot3.png": "e1fa309a704bf29261ebf1420303171d",
"assets/assets/images/projects/iotcare/iot4.png": "bd207fbd9ef3bc23b5ea8dd2eb2b18ea",
"assets/assets/images/projects/iotcare/iot5.png": "4e300d9477fe2b1342d5403d4837dc4f",
"assets/assets/images/projects/iotcare/iot6.png": "bb0308facef93978b76982ba97844588",
"assets/assets/images/projects/iotcare/iot7.png": "427c3b842c4f82ccdcd8a233e826001f",
"assets/assets/images/projects/iotcare/iot8.png": "93c67e17615f912bcc29567ab751db46",
"assets/assets/images/projects/iotcare/iot9.png": "6974d1d5d1626d210a87de8ea3e76d07",
"assets/assets/images/projects/nerozon/nerozon1.png": "494740f03df62ec176df3f6233a3354d",
"assets/assets/images/projects/nerozon/nerozon2.png": "09c6d2ef5c7444c348daa9f3c9d37c8b",
"assets/assets/images/projects/nerozon/nerozon3.png": "4f9a01ce7bbe793d51c0698d269abb4c",
"assets/assets/images/projects/nerozon/nerozon4.png": "952e6fd8c170d26eaa5e642fa15da5f0",
"assets/assets/images/projects/nerozon/nerozon5.png": "917b2896e085dcd05a7461c32f301346",
"assets/assets/images/projects/nerozon/nerozon6.png": "a6967b39b9451d2d4fac3f95d443ea2b",
"assets/assets/images/projects/nerozon/nerozon7.png": "47c476ebd5cc981422b4c70a0264712e",
"assets/assets/images/projects/nerozon/nerozon8.png": "9ded0e6c66b1e5940d23af895fcbd96b",
"assets/assets/images/projects/nerozon/nerozon9.png": "717579001486454eac75ed50dbe40c26",
"assets/assets/images/projects/service/service1.png": "7ea6e2110c56e67b6a8432099c321ac2",
"assets/assets/images/projects/service/service10.png": "ac99c1a48238508f59e2137a6112a723",
"assets/assets/images/projects/service/service2.png": "478df0af1184a603feee0010acf15c17",
"assets/assets/images/projects/service/service3.png": "6cabff6afe012bb936990c685f5dddd6",
"assets/assets/images/projects/service/service4.png": "417ace0aa58f48c6a1b2e51f379ef04d",
"assets/assets/images/projects/service/service5.png": "83cf169a8c41a1eac189746687ca00c8",
"assets/assets/images/projects/service/service6.png": "48f91d8f22d8e10ef9a1b5ca1fdfdd84",
"assets/assets/images/projects/service/service7.png": "407deb77e56f34066df7c8255521776c",
"assets/assets/images/projects/service/service8.png": "a0b89218347d6826ae77902f3aa0458e",
"assets/assets/images/projects/service/service9.png": "bfc5e7f1fc468e95ccfc52d1cea51c2d",
"assets/assets/images/projects/urban/urban1.png": "bb65ab99e54a1f5d1909d21a124cb962",
"assets/assets/images/projects/urban/urban2.png": "cf003abd3a27422d3c0c7e19546541ff",
"assets/assets/images/projects/urban/urban3.png": "e60124e69c3f7a84861df7a25162afbd",
"assets/assets/images/projects/urban/urban4.png": "54e6e656a7afee885a92281ac4a91202",
"assets/assets/images/projects/urban/urban5.png": "8cd3dde627e7d741f04e3cc761ce7c07",
"assets/assets/images/projects/urban/urban6.png": "ccf75b6b7b58f06e583f113d8668401b",
"assets/assets/images/projects/urban/urban7.png": "8af3e2ea4f6ee9f4315e6dfdde66246e",
"assets/assets/images/projects/urban/urban8.png": "4bf78275fc3e84cce6c4af146fa3f6d5",
"assets/assets/images/projects/urban/urban9.png": "7aeef550fb249696a28b10dd28c4ce6d",
"assets/assets/images/projects/voyself/voyself1.png": "89422eee694c3c8f33e9b06b01ad5338",
"assets/assets/images/projects/voyself/voyself2.png": "55988b6bbb96adea39e43aad6f333d9c",
"assets/assets/images/projects/voyself/voyself3.png": "6dff7485904747dbe0870383a9645e67",
"assets/assets/images/projects/voyself/voyself4.png": "a6ce384ab2888f2ab2430945eca51bb3",
"assets/assets/images/projects/voyself/voyself5.png": "ef5b10795a6019c1fe20a3e626769d67",
"assets/assets/images/projects/voyself/voyself6.png": "f1a54bfb27a757b29fb79ad3be1798fe",
"assets/assets/images/projects/voyself/voyself7.png": "a40176da140221ac814f5fa9580b30d5",
"assets/assets/images/projects/whitefleet/white1.png": "d9f18b92d44f923daa611f97f5704161",
"assets/assets/images/projects/whitefleet/white10.png": "44b93df695650cb84b5d9bcba223610b",
"assets/assets/images/projects/whitefleet/white11.png": "b31fc774aa80b75d843eca95857b464b",
"assets/assets/images/projects/whitefleet/white12.png": "9d78c0d7b516ee731a2f918fe832085c",
"assets/assets/images/projects/whitefleet/white13.png": "ac5c2533c0cf49d51c1b6390277237af",
"assets/assets/images/projects/whitefleet/white2.png": "784ac735fbd934d90d6d9bc1fe848e27",
"assets/assets/images/projects/whitefleet/white3.png": "ec169e9d489e3fd8cb708b23bd6efe3b",
"assets/assets/images/projects/whitefleet/white4.png": "b9f8a0280234aed57531cc08f15bdb66",
"assets/assets/images/projects/whitefleet/white5.png": "51fc35b7796598d9c3c4e79087856065",
"assets/assets/images/projects/whitefleet/white6.png": "093e82d1dcdaa8e76d68082bea2ca399",
"assets/assets/images/projects/whitefleet/white7.png": "cf33d3ae7d2ea911adda7899378ce7b2",
"assets/assets/images/projects/whitefleet/white8.png": "d50031380d7e4d86ce1d0a3daaaca301",
"assets/assets/images/projects/whitefleet/white9.png": "85accdcc398245b730edb79ce2409504",
"assets/assets/images/recipe.png": "47c72988f9bb6d301948ac38877b231c",
"assets/assets/images/task.png": "62d6be2ebaef80434b114eacd9102a52",
"assets/assets/images/triange_icon.png": "086ab5ca50d3e558e3307ff009975083",
"assets/FontManifest.json": "5a32d4310a6f5d9a6b651e75ba0d7372",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/NOTICES": "0b9d3c682da44333fafb0f46bb81b61d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "5ac99533bd9dc46227434b4853c3e532",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "093d2cde7075fcffb24ab215668d0da2",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "1e17b1ec3152f29bf783bd42db8b6023",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"icons/image.png": "1c9ef987c42e2618a5bfec34f3057e8d",
"image.png": "1c9ef987c42e2618a5bfec34f3057e8d",
"index.html": "b20dcbaa0082fe4742413e795f3447ed",
"/": "b20dcbaa0082fe4742413e795f3447ed",
"main.dart.js": "f114e9e646b46003d15d02436bba206c",
"manifest.json": "4d2a074e955647542596586cbde41715",
"version.json": "c420e205d8eac4ccea99913b4a50bfa7"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
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
