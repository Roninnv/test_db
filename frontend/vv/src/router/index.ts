// src/router/index.ts
import { createRouter, createWebHistory } from 'vue-router';
import WarehouseList from '../components/WarehouseList.vue';
import GoodsList from '../components/GoodsList.vue';
import InboundLog from '../components/InboundLog.vue';
import OutboundLog from '../components/OutboundLog.vue';
import GoodsPriceHistory from '../components/GoodsPriceHistory.vue';

const routes = [
  { path: '/', component: WarehouseList, name: 'WarehouseList' },
  { path: '/goods', component: GoodsList, name: 'GoodsList' },
  { path: '/inbound', component: InboundLog, name: 'InboundLog' },
  { path: '/outbound', component: OutboundLog, name: 'OutboundLog' },
  { path: '/price-history', component: GoodsPriceHistory, name: 'GoodsPriceHistory' },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;