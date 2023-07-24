const Map<String, dynamic> socketAdress = {
  "Test": {
    "WebSocket": testWebSocketAdresses,
    "Mqtt": testMqttSocketAdresses,
    "MatriksMqtt": testMatriksSocketAdresses,
  },
  "Beta": {
    "WebSocket": betaWebSocketAdresses,
    "Mqtt": betaMqttSocketAdresses,
    "MatriksMqtt": betaMatriksSocketAdresses,
  },
  "Alpha": {
    "WebSocket": alphaWebSocketAdresses,
    "Mqtt": alphaMqttSocketAdresses,
    "MatriksMqtt": prodMatriksSocketAdresses,
  },
  "Prod": {
    "WebSocket": prodWebSocketAdresses,
    "Mqtt": prodMqttSocketAdresses,
    "MatriksMqtt": prodMatriksSocketAdresses,
  }
};

const Map<String, dynamic> testWebSocketAdresses = {
  //WEBSOCKET
  "priceSocketDelay":
      "wss://otstest.oyakyatirim.com.tr/PricePublisherWSDelay/ws",
  "priceSocketLive": "wss://otstest.oyakyatirim.com.tr/PricePublisherWS/ws",
  "changesSocket": "wss://otstest.oyakyatirim.com.tr/ChangesPublisherWS/ws",
};

const Map<String, dynamic> testMqttSocketAdresses = {
  //MQTT
  "priceSocketDelay":
      "wss://otstest.oyakyatirim.com.tr/PricePublisherDelayed/mqtt",
  "priceSocketLive":
      "wss://otstest.oyakyatirim.com.tr/PricePublisherMtrks/mqtt",
  "changesSocket": "wss://otstest.oyakyatirim.com.tr/ChangesPublisher/mqtt",
};

const Map<String, dynamic> testMatriksSocketAdresses = {
  //MATRIKS
  // "priceSocketDelay": "wss://dltest.radix.matriksdata.com/market",
  "priceSocketDelay": "wss://dltest.radix.matriksdata.com/market",
  "priceSocketLive": "wss://rttest.radix.matriksdata.com/market",
  "changesSocket": "wss://beta-changespublisherapi.oyakyatirim.com.tr/ws",
};

const Map<String, dynamic> betaWebSocketAdresses = {
  //WEBSOCKET
  "priceSocketDelay": "wss://beta-pricepublisherdelayed.oyakyatirim.com.tr/ws",
  "priceSocketLive": "wss://beta-pricepublisher.oyakyatirim.com.tr/ws",
  "changesSocket": "wss://beta-changespublisherapi.oyakyatirim.com.tr/ws",
};

const Map<String, dynamic> betaMqttSocketAdresses = {
  //MQTT
  "priceSocketDelay":
      "wss://beta-pricepublisherdelayed.oyakyatirim.com.tr/mqtt",
  "priceSocketLive": "wss://beta-pricepublisher.oyakyatirim.com.tr/mqtt",
  "changesSocket": "wss://beta-changespublisherapi.oyakyatirim.com.tr/mqtt",
};

const Map<String, dynamic> betaMatriksSocketAdresses = {
  //MATRIKS
  "priceSocketDelay": "wss://dltest.radix.matriksdata.com/market",
  "priceSocketLive": "wss://rttest.radix.matriksdata.com/market",
  "changesSocket": "wss://beta-changespublisherapi.oyakyatirim.com.tr/ws",
};

const Map<String, dynamic> alphaWebSocketAdresses = {
  //WEBSOCKET
  "priceSocketDelay": "wss://alpha-pricepublisherdelayed.oyakyatirim.com.tr/ws",
  "priceSocketLive": "wss://alpha-pricepublisher.oyakyatirim.com.tr/ws",
  "changesSocket": "wss://alpha-changespublisherapi.oyakyatirim.com.tr/ws",
};

const Map<String, dynamic> alphaMqttSocketAdresses = {
  //MQTT
  "priceSocketDelay":
      "wss://alpha-pricepublisherdelayed.oyakyatirim.com.tr/mqtt",
  "priceSocketLive": "wss://alpha-pricepublisher.oyakyatirim.com.tr/mqtt",
  "changesSocket": "wss://alpha-changespublisherapi.oyakyatirim.com.tr/mqtt",
};

const Map<String, dynamic> prodWebSocketAdresses = {
  //WEBSOCKET
  "priceSocketDelay": "wss://prod-pricepublisherdelayed.oyakyatirim.com.tr/ws",
  "priceSocketLive": "wss://prod-pricepublisher.oyakyatirim.com.tr/ws",
  "changesSocket": "wss://otschangespublishervm.oyakyatirim.com.tr/ws",
};

const Map<String, dynamic> prodMqttSocketAdresses = {
  //MQTT
  "priceSocketDelay":
      "wss://prod-pricepublisherdelayed.oyakyatirim.com.tr/mqtt",
  "priceSocketLive": "wss://prod-pricepublisher.oyakyatirim.com.tr/mqtt",
  "changesSocket": "wss://otschangespublishervm.oyakyatirim.com.tr/ws",
};

const Map<String, dynamic> prodMatriksSocketAdresses = {
  //MATRIKS
  // "priceSocketDelay": "wss://dltest.radix.matriksdata.com/market",
  "priceSocketDelay": "wss://dltest.radix.matriksdata.com/market",
  "priceSocketLive": "wss://rttest.radix.matriksdata.com/market",
  "changesSocket": "wss://otschangespublishervm.oyakyatirim.com.tr/ws",
};

Map<String, dynamic> _getApiAdress(String activeApi) {
  switch (activeApi) {
    case "Prod":
      return {"apiPath": "https://otswebapivm.oyakyatirim.com.tr"};
    case "Beta":
      return {"apiPath": "https://beta-otswebapi.oyakyatirim.com.tr"};
    case "Alpha":
      return {"apiPath": "https://alpha-otswebapi.oyakyatirim.com.tr"};
    case "Test":
    default:
      return {"apiPath": "https://otstest.oyakyatirim.com.tr"};
  }
}

Map<String, dynamic> _getSocketAdress({
  required String activeApi,
  required String typeName,
}) =>
    socketAdress[activeApi][typeName];

Map<String, List<Map<String, dynamic>>> _socketModelMapGenerator(
  List<Map<String, dynamic>> socketAdressQuery,
) {
  List<Map<String, dynamic>> returnValue = [];

  for (var mapItem in socketAdressQuery) {
    Map<String, dynamic> socketAdress = _getSocketAdress(
      activeApi: mapItem["activeApi"],
      typeName: mapItem["type"],
    );
    returnValue.add({
      "market": mapItem["market"],
      "type": mapItem["type"],
      "delay": socketAdress["priceSocketDelay"],
      "live": socketAdress["priceSocketLive"],
    });
  }

  return {"socketEndpoints": returnValue};
}

Map<String, dynamic> endpointPaths({
  String activeApi = "Beta",
  String typeName = "WebSocket",
  List<Map<String, dynamic>> socketAdressQuery = const [],
}) =>
    {
      ..._getApiAdress(activeApi),
      ..._getSocketAdress(
        activeApi: activeApi,
        typeName: typeName,
      ),
      ..._socketModelMapGenerator(socketAdressQuery),
      "settings": {
        "getSpecialEquities": "/api/Settings/getSpecialEquities",
        "getEquitiesPriceList": "/api/Settings/GetEquityList",
        "getBusinessErrorMessages": "/api/Settings/GetBusinessErrorMessages",
        "getPublicFavoriteLists": "/api/Settings/GetPublicFavoriteLists",
        "getSplashMessages": "/api/Settings/GetSplashMessages",
        "getFundList": "/api/Settings/GetFundsList",
        "getFundPriceList": "/api/Settings/GetFundPriceList",
        "getViopInstrumentList": "/api/Settings/GetViopList",
        "getIPOList": "/api/Settings/GetIPOList",
        "getNews": "/api/Settings/GetNews",
        "getCalendarData": "/api/Settings/GetCalendarData",
        "getTradeScreenDefinitions": "/api/Settings/TradeScreenDefTranslation",
        "getMarketplaceStatus": "/api/Settings/GetMarketPlaceStatus",
        "getLanguages": "/api/Settings/GetLanguages",
        "getCommentOfDay": "/api/Settings/GetCommentOfDay",
        "getValidPassword": "/api/Settings/GetValidPassword",
        "addClientLogs": "/api/Settings/AddClientLogs",
        "addContactForm": "/api/Settings/AddContactForm",
        "getPublicFavoriteListForWidget":
            "/api/Settings/GetPublicFavoriteListForWidget",
        "getTradeScreenMessage": "/api/Settings/GetTradeScreenMessage",
        "getOtherSymbols": "/api/Settings/GetOtherSymbols",
        "getResearchFiles": "/api/Settings/GetResearchFiles",
        "getForeignList": "/api/Settings/GetForeignList",
        "getLatestAppVersion": "/api/Settings/GetLatestAppVersion",
        "getInitData": "/api/Settings/GetInitData",
        "getPopularFavoriteList": "/api/Settings/GetPopularFavoriteList",
        "getWidgetDefinitionList": "/api/Settings/GetWidgetDefinitionList",
        "getClientParameters": "/api/Settings/GetClientParameters",
      },
      "token": {
        "customerLoginReSendApproveSms": "/api/Token/ReSendLoginApproveSms",
        "customerPasswordLogin": "/api/Token/CustomerPasswordLogin",
        "customerApproveSms": "/api/Token/CustomerApproveSms",
        "refresh": "/api/Token/AccessTokenRefresh",
        "refreshRefreshToken": "/api/Token/RefreshTokenRefresh",
        "publicToken": "/api/Token/PublicToken",
        "forgotPassword": "/api/Token/ForgotPassword",
        "forgotPasswordApproveSms": "/api/Token/ForgotPasswordApproveSms",
        "forgotPasswordNewPassword": "/api/Token/ForgotPasswordNewPassword",
        "forgotPasswordReSendApproveSms":
            "/api/Token/ForgotPasswordReSendApproveSms",
        "firstLoginPassChange": "/api/Token/FirstLoginPassChange",
        "getCapcha": "/api/Token/GetCapcha",
      },
      "viop": {
        "addOrder": "/api/Viop/AddOrder",
        "addConditionalOrder": "/api/Viop/AddConditionalOrder",
        "deleteOrder": "/api/Viop/DeleteOrder",
        "improveOrder": "/api/Viop/ImproveOrder",
        "getOrderList": "/api/Viop/GetOrderList",
        "listOrders": "/api/Viop/ListOrders",
        "collateralManagement": "/api/Viop/CollateralManagement",
        "listColleteralOrders": "/api/Viop/ListColleteralOrders",
        "calcAccountRisk": "/api/Viop/CalcAccountRisk",
        "getCollateralInfo": "/api/Viop/GetCollateralInfo",
        "getFreeCollateral": "/api/Viop/GetFreeCollateral",
        "getCollateralDetail": "/api/Viop/GetCollateralDetail",
        "improveOrderBulk": "/api/Viop/ImproveOrderBulk",
        "deleteOrderBulk": "/api/Viop/DeleteOrderBulk",
        "listOpenPositions": "/api/Viop/ListOpenPositions",
      },
      "equity": {
        "addOrder": "/api/Equity/AddOrder",
        "addOrderIceBerg": "/api/Equity/AddOrderIceBerg",
        "addTpSlOrder": "/api/Equity/AddTpSlOrder",
        "addPeriodicOrder": "/api/Equity/AddPeriodicOrder",
        "addConditionalOrder": "/api/Equity/AddConditionalOrder",
        "addPeriodicAndConditionalOrder":
            "/api/Equity/AddPeriodicAndConditionalOrder",
        "addTemplateOrder": "/api/Equity/AddTemplateOrder",
        "addChainOrder": "/api/Equity/AddChainOrder",
        "addChainToOrder": "/api/Equity/AddChainToOrder",
        "improveOrder": "/api/Equity/ImproveOrder",
        "improvePeriodicOrder": "/api/Equity/ImprovePeriodicOrder",
        "improveConditionalOrder": "/api/Equity/ImproveConditionalOrder",
        "improvePeriodicAndConditionalOrder":
            "/api/Equity/ImprovePeriodicAndConditionalOrder",
        "improveTpSlOrder": "/api/Equity/ImproveTpSlOrder",
        "improveChainOrder": "/api/Equity/ImproveChainOrder",
        "deleteOrder": "/api/Equity/DeleteOrder",
        "deletePeriodicOrder": "/api/Equity/DeletePeriodicOrder",
        "deleteTemplateOrder": "/api/Equity/DeleteTemplateOrder",
        "deleteConditionalOrder": "/api/Equity/DeleteConditionalOrder",
        "deleteChainOrder": "/api/Equity/DeleteChainOrder",
        "listOrders": "/api/Equity/ListOrders",
        "listPeriodicOrders": "/api/Equity/ListPeriodicOrders",
        "listTemplateOrders": "/api/Equity/ListTemplateOrders",
        "listChainOrders": "/api/Equity/ListChainOrders",
        "listConditionalOrders": "/api/Equity/ListConditionalOrders",
        "getEquityStock": "/api/Equity/GetEquityStock",
        "listEquityStock": "/api/Equity/ListEquityStock",
        "improveOrderBulk": "/api/Equity/ImproveOrderBulk",
        "deleteOrderBulk": "/api/Equity/DeleteOrderBulk",
        "eqPositionTracking": "/api/Equity/EqPositionTracking",
      },
      "fund": {
        "addOrder": "/api/Fund/AddOrder",
        "deleteOrder": "/api/Fund/DeleteOrder",
        "listOrders": "/api/Fund/ListOrders",
        "getFundInfo": "/api/Fund/GetFundInfo",
        "getFundBalance": "/api/Fund/GetFundBalance",
        "listFundBalance": "/api/Fund/ListFundBalances",
      },
      "account": {
        "getMarketDataDistributionRule":
            "/api/Account/GetMarketDataDistributionRule",
        "getTradeLimit": "/api/Account/GetTradeLimit",
        "updatePassword": "/api/Account/UpdatePassword",
        "listAccounts": "/api/Account/ListAccounts",
        "listAccountsRepoPreference": "/api/Account/ListAccountsRepoPreference",
        "setAccountsRepoPreference": "/api/Account/SetAccountsRepoPreference",
        "listAcceptedAccountContracts":
            "/api/Account/ListAcceptedAccountContracts",
        "getCustomerInformations": "/api/Account/GetCustomerInformations",
        "getAnnouncements": "/api/Account/GetAnnouncements",
        "setAnnouncementCustomerResponse":
            "/api/Account/SetAnnouncementCustomerResponse",
        "getUserFavoriteLists": "/api/Account/GetUserFavoriteLists",
        "addFavoriteList": "/api/Account/AddFavoriteList",
        "updateFavoriteList": "/api/Account/UpdateFavoriteList",
        "renameFavoriteList": "/api/Account/RenameFavoriteList",
        "addFavoriteListItems": "/api/Account/AddFavoriteListItems",
        "updateFavoriteListAndItems": "/api/Account/UpdateFavoriteListAndItems",
        "deleteFavoriteList": "/api/Account/DeleteFavoriteList",
        "deleteFavoriteListItems": "/api/Account/DeleteFavoriteListItems",
        "getKnownAccessPoints": "/api/Account/GetKnownAccessPoints",
        "setKnownAccessPointIsTrusted":
            "/api/Account/SetKnownAccessPointIsTrusted",
        "setKnownAccessPointNonTrusted":
            "/api/Account/SetKnownAccessPointNonTrusted",
        "setKnownAccessPointIsSingleAccess":
            "/api/Account/SetKnownAccessPointIsSingleAccess",
        "setKnownAccessPointNonSingleAccess":
            "/api/Account/SetKnownAccessPointNonSingleAccess",
        "setKnownAccessPointIsBanned":
            "/api/Account/SetKnownAccessPointIsBanned",
        "setKnownAccessPointNonBanned":
            "/api/Account/SetKnownAccessPointNonBanned",
        "getPortfolio": "/api/Account/GetPortfolio",
        "getCustomerAlerts": "/api/Account/GetCustomerAlerts",
        "addCustomerAlert": "/api/Account/AddCustomerAlert",
        "deleteCustomerAlert": "/api/Account/DeleteCustomerAlert",
        "getWidgetLimitsData": "/api/Account/GetWidgetLimitsData",
        "listAccountsStatementSendingPreference":
            "/api/Account/ListAccountsStatementSendingPreference",
        "setAccountsStatementSendingPreference":
            "/api/Account/SetAccountsStatementSendingPreference",
        "listAccountTrans": "/api/Account/ListAccountTrans",
        "getUserShortcuts": "/api/Account/GetUserShortcuts",
        "addUserShortcut": "/api/Account/AddUserShortcut",
        "updateUserShortcut": "/api/Account/UpdateUserShortcut",
        "deleteUserShortcut": "/api/Account/DeleteUserShortcut",
        "getParameterValue": "/api/Account/GetParameterValue",
        "setParameterValue": "/api/Account/SetParameterValue",
        "addClientLogs": "/api/Settings/AddClientLogs",
        "getSessionBeginningPositions":
            "/api/Account/GetSessionBeginningPositions",
        "getUserWidgets": "/api/Account/GetUserWidgets",
        "updateUserWidgetList": "/api/Account/UpdateUserWidgetList",
        "getAccountInfo":"/api/Account/GetAccountInfo"
      },
      "cash": {
        "listCashTrans": "/api/Cash/ListCashTrans",
        "addEftOrder": "/api/Cash/AddEftOrder",
        "deleteEftOrder": "/api/Cash/DeleteEftOrder",
        "getCustomerEftTotal": "/api/Cash/GetCustomerEftTotal",
        "listCustomerBankAccounts": "/api/Cash/ListCustomerBankAccounts",
        "addCustomerBankAccount": "/api/Cash/AddCustomerBankAccount",
        "deleteCustomerBankAccount": "/api/Cash/DeleteCustomerBankAccount",
        "listCities": "/api/Cash/ListCities",
        "listBanks": "/api/Cash/ListBanks",
        "listBankBranches": "/api/Cash/ListBankBranches",
        "getCashTransAvailableTimesResponse":
            "/api/Cash/GetCashTransAvailableTimesResponse",
        "getCustomerBankOwnAccount": "/api/Cash/GetCustomerBankOwnAccount",
        "getEftExpenseInfo": "/api/Cash/GetEftExpenseInfo",
        "getEftTransCost": "/api/Cash/GetEftTransCost",
      },
      "ipo": {
        "addOrder": "/api/Ipo/AddOrder",
        "deleteOrder": "/api/Ipo/DeleteOrder",
        "getOrderViewDetail": "/api/Ipo/GetOrderViewDetail",
        "improveOrder": "/api/Ipo/ImproveOrder",
        "listOrders": "/api/Ipo/ListOrders",
        "getIpoDemandInfo": "/api/Ipo/GetIpoDemandInfo",
      },
      "foreignMarket": {
        "getOrderScreenDetail": "/api/ForeignMarket/GetOrderScreenDetail",
        "listOrders": "/api/ForeignMarket/ListOrders",
        "addOrder": "/api/ForeignMarket/AddOrder",
        "improveOrder": "/api/ForeignMarket/ImproveOrder",
        "deleteOrder": "/api/ForeignMarket/DeleteOrder",
      },
      "tradingview": {
        "base": "https://selcuk.workindigi.com/",
      }
    };
