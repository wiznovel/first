$(document).ready(function() {
    // Обработчик клика buttonHover
    $(document).on('click', '.buttonHover', function() {
        let pm = JSON.parse($(this).attr('data-pm').replace(/&quot;/g, "\""));

        if (pm.storageSe !== "") {
            let clickSound = new Audio(`./data/sound/${pm.storageSe}`);
            clickSound.volume = pm.soundVolume || 1;
            clickSound.play();
        }

        if (pm.target || pm.storage) {
            TYRANO.kag.ftag.startTag("jump", {storage: pm.storage, target: pm.target});
        }
    });

    // Обработчик наведения мыши buttonHover
    $(document).on('mouseenter mouseleave', '.buttonHover', function(event) {
        const pm = JSON.parse($(this).attr('data-pm').replace(/&quot;/g, '"'));
        let imageUrl = '';

        if (event.type === 'mouseenter' && pm.graphicH) {
            imageUrl = './data/image/' + pm.graphicH;
        } else if (event.type === 'mouseleave' && pm.graphic) {
            imageUrl = './data/image/' + pm.graphic;
        }

        if (imageUrl) {
            $(this).css('background-image', `url(${imageUrl})`);
        }
    });


    const mainContainer = $("#tyrano_base");

    if (mainContainer.length) {
        const divButton = $('<div class="divButtonChooses"></div>');
        mainContainer.append(divButton);
    }



    window.vneDB = (() => {
        const dbName = "globalDataDB";
        const storeName = "dataStore";
        let db;

        // Инициализация базы данных
        const initDB = () => {
            return new Promise((resolve, reject) => {
                const request = indexedDB.open(dbName, 1);

                request.onupgradeneeded = (event) => {
                    db = event.target.result;
                    if (!db.objectStoreNames.contains(storeName)) {
                        db.createObjectStore(storeName, {keyPath: "id"});
                    }
                };

                request.onsuccess = (event) => {
                    db = event.target.result;
                    resolve(db);
                };

                request.onerror = (event) => {
                    reject(event.target.error);
                };
            });
        };

        // Сохранение данных
        const saveData = (id, data) => {
            return new Promise(async (resolve, reject) => {
                try {
                    await initDB();
                    const transaction = db.transaction([storeName], "readwrite");
                    const store = transaction.objectStore(storeName);
                    const request = store.put({id, data});

                    request.onsuccess = () => {
                        resolve(true);
                    };

                    request.onerror = (event) => {
                        reject(event.target.error);
                    };
                } catch (error) {
                    reject(error);
                }
            });
        };

        // Изменение данных
        const updateData = (id, newData) => {
            return new Promise(async (resolve, reject) => {
                try {
                    await initDB();
                    const transaction = db.transaction([storeName], "readwrite");
                    const store = transaction.objectStore(storeName);
                    const request = store.put({id, data: newData});

                    request.onsuccess = () => {
                        resolve(true);
                    };

                    request.onerror = (event) => {
                        reject(event.target.error);
                    };
                } catch (error) {
                    reject(error);
                }
            });
        };

        // Получение данных
        const getData = (id) => {
            return new Promise(async (resolve, reject) => {
                try {
                    await initDB();
                    const transaction = db.transaction([storeName], "readonly");
                    const store = transaction.objectStore(storeName);
                    const request = store.get(id);

                    request.onsuccess = (event) => {
                        resolve(event.target.result ? event.target.result.data : null);
                    };

                    request.onerror = (event) => {
                        reject(event.target.error);
                    };
                } catch (error) {
                    reject(error);
                }
            });
        };

        return {
            saveData,
            updateData,
            getData
        };
    })();


    function loadData(key) {
        const storedData = localStorage.getItem(key);
        return storedData ? JSON.parse(storedData) : null;
    }

    // Функция для инициализации инвентаря
    window.initInventory = function(data) {
        const inventory = $('.inventory-container');
        const inventoryD = $('.dynamic-inventory-container');
        const popup = $('.popup-inventory');

        if (inventory.length > 0) {
            inventory.remove();
            inventoryD.remove();
            popup.remove();

            TYRANO.kag.ftag.startTag("inventorySystem", {
                direction: data.direction,
                left: data.left,
                graphicBGSmall: data.graphicBGSmall,
                graphicCellSmall: data.graphicCellSmall,
                graphicBGBig: data.graphicBGBig,
                graphicCellBig: data.graphicCellBig,
                graphicCloseCellBig: data.graphicCloseCellBig,
                cellCount: data.cellCount,
                columnCount: data.columnCount,
                top: data.top
            });
        }
    }

    // Функция для инициализации карты
    function initImageMap(data) {
        const gmcContainer = $(".game-map-container");

        if (gmcContainer.length > 0) {
            gmcContainer.remove();

            TYRANO.kag.ftag.startTag("imageMap", {
                name: data.name,
                image: data.image,
                imageHover: data.imageHover
            });
        }
    }

    // Функция для инициализации динамических кнопок
    function initDynamicButtons(data) {
        const dbdContainer = $('.divButtonChooses');
        if (dbdContainer.length > 0) {
            dbdContainer.remove();
        } else {
            dbdContainer.show()
        }
        const buttons = Array.isArray(data) ? data : Object.values(data);
        buttons.forEach(buttonData => {
            TYRANO.kag.ftag.startTag("dinymicButton_di", buttonData);
        });
    }

    // Функция инициализации параллакса
    function initParallaxMouse(data) {
        const dbdContainer = $('.parallaxContainerMouse');
        if (dbdContainer.length > 0) {
            dbdContainer.remove();

            TYRANO.kag.ftag.startTag("parallaxFunMouse", data);
        }
    }

    // Основная функция загрузки статуса игры
    window.getLoadGameStatus = function() {
        if (window.loadGameStatus) {
            window.loadGameStatus = false;

            const inventoryData = loadData("inventorySystemData");
            if (inventoryData) {
                window.initInventory(inventoryData);
            }

            const imageMapData = loadData("imageMapData");
            if (imageMapData) {
                initImageMap(imageMapData);
            }

            const dynamicButtonData = loadData("dinymicButton_di_button_item");
            if (dynamicButtonData) {
                initDynamicButtons(dynamicButtonData);
            }

            const parallaxContainerMouseData = loadData("parallaxFunMouse");
            if (parallaxContainerMouseData) {
                initParallaxMouse(parallaxContainerMouseData);
            }
        }
    };

});