<script lang="ts" setup>
const props = defineProps({
    to: {
        type: String,
    },
    type: {
        type: String,
        default: 'primary',
    },
    textColor: {
        type: String,
        default: 'default'
    }
})

let classList : Record<string, boolean> = {
    'button': true,
    'button-primary': props.type == 'primary',
    'button-secondary': props.type == 'secondary',
}


classList['button-text-color-' + props.textColor] = true;

</script>

<template>
    <RouterLink :to="to" v-if="to !== undefined">
        <div :class="classList">
            <slot/>
        </div>
    </RouterLink>
    <div :class="classList" v-else>
        <slot/>
    </div>
</template>

<style lang="scss" scoped>

a {
    text-decoration: none;
}

div.button {
    color: var(--color-button-text);
    border-radius: 10px;
    box-shadow: 0px 0px 12px #444;

    &.button-primary {
        background-color: var(--color-accent);
        border: 2px solid var(--color-accent);
    }

    &.button-secondary {
        color: var(--color-accent);
        background-color: transparent;
        border: 2px solid var(--color-accent);
    }

    &.button-text-color-white {
        color: #e7e7e7;
    }

    cursor: pointer;
    font-size: 24px;
    $paddingLR: 25px;
    padding: 10px $paddingLR 10px $paddingLR;
    min-width: 100px;
    transition: background-color 80ms linear;
    transition: color 80ms linear;
    user-select: none;

    &.button-primary:hover {
        background-color: var(--color-button-hover);
    }

    &.button-secondary:hover {
        color: var(--color-button-text);
        background-color: var(--color-accent);

        &.button-text-color-white {
            color: #FFF;
        }
    }

    &.button-primary:active {
        background-color: var(--color-button-active);
    }

    &.button-secondary:active {
        background-color: var(--color-button-active);
    }
}

@media screen and (max-width: 450px) {
    div.button {
        font-size: 18px;
        $paddingLR: 10px;
        padding: 10px $paddingLR 10px $paddingLR;
    }
}
</style>