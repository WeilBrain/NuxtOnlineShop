// store/discount.js
import { defineStore } from 'pinia';

export const useDiscountStore = defineStore({
    id: 'discount',
    state: () => ({
        isDiscountClosed: false,
    }),
    actions: {
        closeDiscount() {
            this.isDiscountClosed = true;
        },
    },
});
